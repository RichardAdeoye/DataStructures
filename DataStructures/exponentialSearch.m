clear all;
close all;
clc;
function [numComparisons, targetIndex] = ExponentialSearch(V, target)

numComparisons = 0;
arrayLength    = length(V);
indexStart     = 1;
indexEnd       = length(V);

if(arrayLength == numComparisons)