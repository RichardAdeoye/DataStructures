%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Ternary Search Test Harness
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clear all;close all;clc;

maxArraySize = 1024;

for N = 1:maxArraySize    
    
    array = 1:N;
    
    for searchTarget = 1:N       
        comparisons(searchTarget) = ternarySearch(array, searchTarget);        
    end % end for
    
    best_comparisons(N) = min(comparisons);  
    average_comparisons(N) = mean(comparisons);  
    worst_comparisons(N) = max(comparisons);  
        
    clear comparisons;    
    
end % end for

figure;

% Plot Observed 

plot([1:maxArraySize], best_comparisons,'g','LineWidth',3);hold on; 
plot([1:maxArraySize], average_comparisons,'y','LineWidth',3);      
plot([1:maxArraySize], worst_comparisons,'r','LineWidth',3);        

legend('best','average','worst');

% Plot Expected

plot([1:maxArraySize], linspace(1,1,maxArraySize), 'k:', 'LineWidth', 2);                    % best
plot([1:maxArraySize], linspace(1,(1/N).*((N*(N+1))/2),maxArraySize), 'k:', 'LineWidth', 2); % average
plot([1:maxArraySize], linspace(1,N,maxArraySize), 'k:', 'LineWidth', 2);                    % worst

% Annotate Chart

xlabel('Array Size (N)','FontSize',14);
ylabel('Comparisons', 'FontSize', 14);
titleString = sprintf('%s\n%s', 'Ternary Search (Successful)', 'Solid: Observed, Dotted: Expected');
title(titleString,'FontSize', 14);
xlim([0 maxArraySize]);
ylim([0 max(worst_comparisons)]);

print -f1 -r300 -dbmp ternarySearchSuccessful.bmp
