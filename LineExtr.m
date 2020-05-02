function [lsfarr]=LineExtr(im,mag,sw)
%  Extracts straight lines from the input image.

%  im: the input image with MxNx3 for color and MxN for grayscale.
%  mag: pixels with gradient magntitude >= mag are used for line support regions.
%  sw: 1 -- show results on images
%      0 -- not show results

%  LSFARR (Line Support Feature Array) is an Lx5 array where L represent 
%  the number of lines.
%  LSFARR(:,1) represent the line length.
%  LSFARR(:,2) represent the x coordinate of line centroid.
%  LSFARR(:,3) represent the y coordinate of line centroid.
%  LSFARR(:,4) represent the line orientation.
%  LSFARR(:,5) represent the line contrast.

%% Convert image to grayscale
im0 = im;
if (size(im,3) > 1)
    im = rgb2gray(im);
end

im = double(im);

%% Compute gradient orientation and magnitude
[edoim edmim Dx Dy] = im2edoim2(im);

magThreshold=mag;
lsrThreshold = 10; %threshold for smallest line support region

tmp=edoim+180;
tmp(edmim<magThreshold)=-1;

lsrM=RgGrw(single(tmp),8,25);

region_stats = regionprops(lsrM,'PixelIdxList');

lsfarr = zeros(max(lsrM(:)),5);
cnt = 0;
for l = 1:numel(region_stats)
    idx=region_stats(l).PixelIdxList;
    
    [Ytmp,Xtmp]=ind2sub(size(im),idx);
    bbox_h=max(Ytmp)-min(Ytmp);
    bbox_w=max(Xtmp)-min(Xtmp);
    
    bbox_diag=sqrt(bbox_h^2 + bbox_w^2);

    if (bbox_diag < lsrThreshold) %ignore small line support region.
        continue;
    end 
    
    Ix_wi=Dx(idx);
    Iy_wi=Dy(idx); 
    grd_wi=edmim(idx);
     % find line orientation
    ST=[sum(Ix_wi.^2) sum(Ix_wi.*Iy_wi); sum(Ix_wi.*Iy_wi) sum(Iy_wi.^2)];
    [V,D] = eig(ST);
    if D(1,1)<D(2,2)
        lorn=atan(V(2,1)/V(1,1));
    else
        lorn=atan(V(2,2)/V(1,2));
    end 

    % vote for r
    Raccm=round(Xtmp.*cos(lorn-pi/2)+Ytmp.*sin(lorn-pi/2));
    
    if max(Raccm) == min(Raccm)
        row_ln = Ytmp;
        col_ln = Xtmp;
    else
        Rrng=min(Raccm):max(Raccm);
        accm=zeros(1,length(Rrng));

        for k=1:length(Rrng)
            accm(k)=sum(grd_wi(Raccm==Rrng(k)));
        end
        
        [~,mxid]=max(accm);
        row_ln=Ytmp(Raccm==Rrng(mxid)); 
        col_ln=Xtmp(Raccm==Rrng(mxid)); 
    end
    
    % (row_ln, col_ln) are pixels on detected lines
    Xmx=max(col_ln);
    Xmn=min(col_ln);
    Ymx=max(row_ln);
    Ymn=min(row_ln);
    
    lmx = (Xmx+Xmn)/2;
    lmy = (Ymx+Ymn)/2;
    llen = sqrt((Xmx-Xmn)^2+(Ymx-Ymn)^2);
    
    if (llen >= lsrThreshold) 
        cnt=cnt+1;
        lsfarr(cnt,1) = llen;
        lsfarr(cnt,2) = lmx;
        lsfarr(cnt,3) = lmy;
        lsfarr(cnt,4) = lorn;
        lcon=mean(grd_wi(Raccm==Rrng(mxid)));
        lsfarr(cnt,5) = lcon;  
    end   
end

lsfarr = lsfarr(1:cnt,:);

if sw==1
    figure,imshow(im0,[]);
    hold on;
    for n = 1:size(lsfarr,1)
        llen = lsfarr(n,1);
        lmx = lsfarr(n,2);
        lmy = lsfarr(n,3);
        lorn = lsfarr(n,4);
        
        dx = llen/(sqrt(4*(1+tan(lorn)^2)));
        dy = tan(lorn)*dx;
        
        line([lmx+dx;lmx;lmx-dx],[lmy+dy;lmy;lmy-dy],'color',[1,0,0],'LineWidth',2);
    end
end

    
end

function [eo em dx dy]=im2edoim2(im)

hy = fspecial('prewitt');
f1=fspecial('gaussian',[7,7],1.2);
hy1=imfilter(f1,hy);
hx = hy1'; 
dy = imfilter(im, hy1, 'replicate');
dx = imfilter(im, hx, 'replicate');
eo = rad2deg(atan2(dy,(dx+1e-5)));
em = sqrt(dx.^2+dy.^2);
end
