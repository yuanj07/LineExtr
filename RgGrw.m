function [lsrM]=RgGrw(imgt,disThr,ortThr)
%  Extracts line support regions. Select seeds based on local densities.
%  Pixels with distance <= (disThr) and orientation difference <= (ortThr)
%  are included to compute density. Seeds are sorted based on density and
%  grown into regions.

% imgt: gradient map
% lsrM: line support region map