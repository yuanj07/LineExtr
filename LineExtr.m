function [lsfarr]=LineExtr(im,mag,sw)
%  Extracts straight lines from the input image.
%  LSFARR=getLSF(IM,SW) extracts lines and line support features from the 
%  input image. 

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
%  Ref:
%  [1] J. B. Bums, A. R. Hanson, and E. M. Riseman. Extracting
%      straight lines. IEEE Trans. on Pattern Analysis and Machine
%      Intelligence, 8:425–455, 1986. 3
%  [2] J. Yuan and A. Cheriyadat. Learning to count buildings in diverse  
%      aerial scene. ACM SIGSPATIAL GIS, 2014

%  Author: 
%  Jiangye Yuan
%  Oak Ridge National Laboratory
%  Date written: 02/15/2014
%  Copyright: ORNL


%% Convert image to grayscale
im0 = im;
if (size(im,3) > 1)
    im = rgb2gray(im);
end

im = double(im);

%% Compute gradient orientation and magnitude
[edoim edmim Dx Dy] = im2edoim2(im);

magThreshold=mag;
lsrThreshold = 20; %threshold for smallest line support region

tmp=edoim+180;
tmp(edmim<magThreshold)=-1;
lsrM=RgGrw(single(tmp),8,30);

line_idx=unique(lsrM);
lsfarr = zeros(max(lsrM(:)),5);
cnt = 0;
for l = 1:max(line_idx)
    idx=find(lsrM==l);
    
    eim = zeros(size(im));
    eim(idx) = 1;    
    
    if (sum(eim(:)) <= lsrThreshold) %ignore small line support region.
        continue;
    end 
    
    Ix_wi=Dx(idx);
    Iy_wi=Dy(idx); 
    grd_wi=edmim(idx);
     % find major orientation
    ST=[sum(Ix_wi.^2) sum(Ix_wi.*Iy_wi); sum(Ix_wi.*Iy_wi) sum(Iy_wi.^2)];
    [V,D] = eig(ST);
    if D(1,1)<D(2,2)
        lorn=atan(V(2,1)/V(1,1));
    else
        lorn=atan(V(2,2)/V(1,2));
    end 

    % vote for r
    [Ytmp,Xtmp]=ind2sub(size(im),idx);

    Raccm=round(Xtmp.*cos(lorn-pi/2)+Ytmp.*sin(lorn-pi/2));
    rng=min(Raccm):max(Raccm);
    accm=zeros(1,length(rng));
    
    for k=1:length(idx)
        rc=round(Xtmp(k).*cos(lorn-pi/2)+Ytmp(k).*sin(lorn-pi/2));
        accm(rng==rc)=accm(rng==rc)+grd_wi(k);
    end
    
    [~,mxid]=max(accm);
    Xmx=max(Xtmp(Raccm==rng(mxid)));
    Xmn=min(Xtmp(Raccm==rng(mxid)));
    Ymx=max(Ytmp(Raccm==rng(mxid)));
    Ymn=min(Ytmp(Raccm==rng(mxid)));
    
    lmx = (Xmx+Xmn)/2;
    lmy = (Ymx+Ymn)/2;
    llen = sqrt((Xmx-Xmn)^2+(Ymx-Ymn)^2);
    
    cnt=cnt+1;
    lsfarr(cnt,1) = llen;
    lsfarr(cnt,2) = lmx;
    lsfarr(cnt,3) = lmy;
    lsfarr(cnt,4) = lorn;
    lcon=mean(grd_wi((Raccm==rng(mxid))));
    lsfarr(cnt,5) = lcon;    
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