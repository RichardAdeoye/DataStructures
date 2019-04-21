function [numComparisons, targetIndex] = ternarySearch(V, target)

numComparisons = 0;
arrayLength    = length(V);
indexStart     = 1;
indexEnd       = length(V);

    %disp(['Target = ' num2str(target)]);disp(' ');
while(indexStart <= indexEnd)
    firstindexMiddle = floor(indexStart + (indexEnd - indexStart)/3); %first third of length of array
    secondindexMiddle = floor(indexEnd - (indexEnd - indexStart)/3); %second third of length of array
    %disp(['Start  = ' num2str(indexStart)]);
    %disp(['End    = ' num2str(indexEnd)]);
    %disp(['Middle = ' num2str(indexMiddle) ' (Value = ' num2str(V(indexMiddle)) ')']);
 
    numComparisons = numComparisons + 1;
    
    
      if (V(firstindexMiddle) == target)
            targetIndex  = firstindexMiddle; 
         %break;
      end
      if (V(secondindexMiddle) == target)
            targetIndex  = secondindexMiddle; 
         %break;
      end

      if (target < V(firstindexMiddle)) 
            % The key lies in between l and mid1 
            indexEnd = firstindexMiddle - 1;     
      elseif (target > V(secondindexMiddle)) 
            % The key lies in between mid2 and r 
            indexStart = secondindexMiddle + 1;
      else
            % The key lies in between mid1 and mid2 
            indexStart = firstindexMiddle + 1; 
            indexEnd = secondindexMiddle - 1; 
      end
    

    %disp(' ');
end

%disp(' ');disp(['Comps  = ' num2str(numComparisons)]);
if(V(firstindexMiddle)~=target)
    targetIndex = -1;
end
if(V(secondindexMiddle)~=target)
    targetIndex = -1;
end

end % end function