%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:    Bubble Sort Algorithm Visualisation for Reversed Arrays
% Author:   Ian van der Linde, PhD
% Rev Date: 24-01-19
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

isSorted                     = false;
lastUnknownPos               = numel(V);


n = 16;
ll = 0;
uu = n - 1;
swapped = true;



while (swapped == true)
    % Forward bubble sort pass
    swapped = false;
    ll = ll + 1;
    for currentPos = ll:uu
        if (V(currentPos) > V(currentPos + 1))
            V = swap(V,currentPos,currentPos + 1);
            swapped = true;
        end
    end
    if (swapped == true)
        % Backwards bubble sort pass
        swapped = false;
        uu = uu - 1;
        for currentPos = uu:-1:ll
            if (V(currentPos) > V(currentPos + 1))
                V = swap(V,currentPos,currentPos + 1);
                swapped = true;
                 arrayState(1:N,changeNumber) = V;
        changeNumber                 = changeNumber + 1;
                 
            end
          
        end
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
print -f1 -r300 -dbmp shakerSortVisualisation.bmp

function x = swap(x,i,j)
% Swap x(i) and x(j)
% Note: In practice, x xhould be passed by reference
val = x(i);
x(i) = x(j);
x(j) = val;
end
