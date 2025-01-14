function [numComparisons, targetIndex] = exponentialSearch(V, target)

numComparisons = 1; % numComparisons = 0;
arrayLength    = length(V);
indexStart     = 1; % left
indexEnd       = length(V); % right


%If x is present at  
%first location itself 
if (V(1) == target)
    %numComparisons = numComparisons + 1;
    return 
end

%Find range for binary search  
%by repeated doubling 
i = 1;
while(i < arrayLength && V(i) <= target)
    numComparisons = numComparisons + 1;
    i = (i * 2);
end

[binaryNumComparisons, target] = binarySearch( V, target); % Get binary number of comparisons
numComparisons = numComparisons + binaryNumComparisons;


% range = min(i,arrayLength);
% 
% if (range >= 1)
%     mid = 1 + (range - 1) / 2;
% end
    
end