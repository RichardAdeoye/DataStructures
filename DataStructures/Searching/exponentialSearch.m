clear all;
close all;
clc;

function [numComparisons, targetIndex] = exponentialSearch(V, target)

numComparisons = 0;
arrayLength    = length(V);
indexStart     = 1;
indexEnd       = length(V);

if(V(1) == target)
    return 
end

while (i < arrayLength)

