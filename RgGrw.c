# include "math.h"
# include "mex.h"

int N1, N2, cnt, labelN, tb, bb, lb, rb , tgt, tgtL;
int *mark, *SegRes, *SegRes_out, *stk, *DstM, *DstL, *DstLi, *DstLj;
float dt, ot, *inpIm;
void expand(int i, int j);
void quicksort(int a[], int ai[], int aj[], int first, int last);

void mexFunction(    
    int nargout,
    mxArray *out[],
    int nargin,
    const mxArray *in[]
)
{
    int i, j, k, ii, jj, tgti, tgtj, dstV, nonstop, cnt, ti, tj;
	float c1, c2, c, d, ws, tmp, td;
  
    /* check argument */
    if (nargin < 3) {
        mexErrMsgTxt("Four input arguments required");
    }
    if (nargout> 1) {
        mexErrMsgTxt("Too many output arguments.");
    }

	inpIm = mxGetData(in[0]);
    N1 = mxGetM(in[0]);
    N2 = mxGetN(in[0]);    
	dt = mxGetScalar(in[1]);
	ot = mxGetScalar(in[2]);
	   
    out[0] = mxCreateNumericMatrix(N1, N2, mxINT32_CLASS, mxREAL);


    if (out[0]==NULL) {
	    mexErrMsgTxt("Not enough memory for the output matrix 1");
	}
    SegRes = mxGetData(out[0]);
   
	mark = mxCalloc(N1*N2, sizeof(int));
	stk = mxCalloc(N1*N2*2, sizeof(int));
	DstM = mxCalloc(N1*N2, sizeof(int));
	DstL = mxCalloc(N1*N2, sizeof(int));
	DstLi = mxCalloc(N1*N2, sizeof(int));
	DstLj = mxCalloc(N1*N2, sizeof(int));

	ws = dt*2;
	cnt = 0;
	for (ii=0; ii<N1; ii++){
        for (jj=0; jj<N2; jj++){
			if (inpIm[ii+jj*N1]>=0) {
				tgti=ii;
				tgtj=jj;
				if (tgti-ws>0) tb=tgti-ws;
				else tb=0;
				if (tgti+ws<N1-1) bb=tgti+ws;
				else bb=N1-1;
				if (tgtj-ws>0) lb=tgtj-ws;
				else lb=0;
				if (tgtj+ws<N2-1) rb=tgtj+ws;
				else rb=N2-1;
			
				dstV=0;
				for (i = tb; i <= bb; i++){
					for (j = lb; j <= rb; j++){
						d = sqrtf((tgti-i)*(tgti-i)+(tgtj-j)*(tgtj-j));
						if (d <= dt && inpIm[i+j*N1]>=0 && (i!=tgti || j!=tgtj)){
							c1=fabs(inpIm[tgti+tgtj*N1]-inpIm[i+j*N1]);
							c2=360-c1;
							if (c1<c2) c=c1;
							else c=c2;
							if (c<ot) {
								dstV=dstV+1;
							}
						}
					}
				}
				DstM[ii+jj*N1]=dstV;
				DstL[cnt]=dstV;
				DstLi[cnt]=ii;
				DstLj[cnt]=jj;
				cnt += 1;
			}
		}
	}
	
	quicksort(DstL,DstLi,DstLj,0,cnt-1);
	
	labelN=0;
	for (k=cnt-1; k>=0; k--){
		if (SegRes[DstLi[k]+DstLj[k]*N1]==0){
			tgti=DstLi[k];
			tgtj=DstLj[k];
			
			if (DstM[tgti+tgtj*N1]==0){
				continue;
			}
			
			tgt=inpIm[tgti+tgtj*N1];
			DstM[tgti+tgtj*N1]=0;
			labelN++;
			tb=tgti;
			bb=tgti;
			lb=tgtj;
			rb=tgtj;
			expand(tgti, tgtj);
		}
	}

}

void expand(int i, int j) // recursive growing
{
	float c1, c2, c;
	
	c1=fabs(inpIm[i+j*N1]-tgt);
	c2=360-c1;
	if (c1<c2) c=c1;
	else c=c2;
	
 	if (c>ot || inpIm[i+j*N1]<0 || SegRes[i+j*N1]>0){
		return;
	}
	
	SegRes[i+j*N1]=labelN;
	DstM[i+j*N1]=0;
	if (i<tb) tb=i;
	if (i>bb) bb=i;
	if (j<lb) lb=j;
	if (j>rb) rb=j;
    
 	if (i+1<N1) expand(i+1,j);
 	if (j+1<N2) expand(i,j+1);
 	if (i-1>=0) expand(i-1,j);
 	if (j-1>=0) expand(i,j-1);
} 


 void quicksort(int x[], int xi[], int xj[], int first,int last){
    int pivot,j,temp,i;

     if(first<last){
         pivot=first;
         i=first;
         j=last;

         while(i<j){
             while(x[i]<=x[pivot]&&i<last)
                 i++;
             while(x[j]>x[pivot])
                 j--;
             if(i<j){
                 temp=x[i];
                  x[i]=x[j];
                  x[j]=temp;
				  temp=xi[i];
                  xi[i]=xi[j];
                  xi[j]=temp;
				  temp=xj[i];
                  xj[i]=xj[j];
                  xj[j]=temp;
             }
         }

         temp=x[pivot];
         x[pivot]=x[j];
         x[j]=temp;
		 temp=xi[pivot];
         xi[pivot]=xi[j];
         xi[j]=temp;
		 temp=xj[pivot];
         xj[pivot]=xj[j];
         xj[j]=temp;
		 
         quicksort(x,xi,xj,first,j-1);
         quicksort(x,xi,xj,j+1,last);
    }
}
