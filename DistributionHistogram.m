function DistributionHistogram(numDice)
%% Rolls numDice dice and plots a histogram with the resulting eye numbers.
rollData = randi([1 6],1,numDice);  % Rolls 1000 dice (1000x1-matrix).
close all;  % Close all open figures.
histogram(rollData,'FaceColor','blue');    % Creates a histogram of dice rolls.
title(sprintf('Roll distribution of %d rolls.', numDice));
xlabel('Number of eyes shown');
ylabel('Occurances');
set(gca,'Xtick',1:6);
end