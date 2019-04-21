%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:    Insertion Sort Algorithm Visualisation for Reversed Arrays
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc;
N = 16;     % Length of array to be sorted
V = N:-1:1; % Generate an array containing integers from N down to 1
disp(V);
changeNumber                 = 1;
arrayState(1:N,changeNumber) = V;
changeNumber                 = changeNumber + 1;

for currentFocus = 2:numel(V)
    j = currentFocus -1;
    index  = currentFocus;
    
    while(j>=1)
        if(V(index)<V(j))
            temp = V(j);
            V(j) = V(index);
            V(index) = temp;
            index = j;
        end
        j=j-1;
        arrayState(1:N,changeNumber) = V;
        changeNumber                 = changeNumber + 1;
    end
    
    
end
disp(V);

figure;
imagesc(arrayState);
axis square;
colormap jet;
ylabel('Element Number','FontSize',14);
xlabel('Array State','FontSize',14);

% Store High-resolution Image Suitable for use in Reports
print -f1 -r300 -dbmp insertionSortVisualisation.bmp