# Straight Line Extraction

This software extracts straight lines from images. The algorithm is described in  

**J. Yuan and A. M. Cheriyadat, Learning to count buildings in diverse aerial scenes. ACM SIGSPATIAL GIS, 2014.**

This is a software for non-commercial purpose. Please contact the author for commercial use.

## Initial setup

To run the code, you need Matlab with image processing tool box and mex is configured correctly (type mex -setup in the matlab prompt).

## Usage

Run the following commands in the matlab prompt to compile the c file. This only needs to be done once.

`mex RgGrw.c` 

Run the code to extract lines from the provided test image 

`img = imread('./test.png');`

`LineList = LineExtr(img,20,1);`
