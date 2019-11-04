# Straight Line Extraction

The algorithm is based on the line support region idea (Burns'86), which is to first detect regions containing connected pixels with similar gradient orientations and then infer line orientations and center locations based detected regions. The main difference is that we use structure tensor to estimate line orientation and Hough transform to locate centers, which are fast to compute and robust to noise. The algorithm is described in  

**J. Yuan and A. M. Cheriyadat, Learning to count buildings in diverse aerial scenes. ACM SIGSPATIAL GIS, 2014.**

## Initial setup

To run the code, you need Matlab with image processing tool box and mex is configured correctly (type mex -setup in the matlab prompt).

## Usage

Run the following commands in the matlab prompt to compile the c file. This only needs to be done once.

`mex RgGrw.c` 

Run the code to extract lines from the provided test image 

`img = imread('./test.png');`

`LineList = LineExtr(img,20,1);`
