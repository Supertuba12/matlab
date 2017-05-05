%% Rolls 1000 dice and plots a histogram with the result.
clear;  % Clear variables.
close all;  % Close all open figures.
numDice = 1000;
rollData = randi([1 6],1,numDice);  % Rolls 1000 dice (1000x1-matrix).
histogram(rollData,'FaceColor','magenta');    % Creates a histogram of dice rolls.
title(sprintf('Roll distribution of %d rolls.', numDice));
xlabel('Eye Number Shown');
ylabel('Occurances');
set(gca,'Xtick',1:6);