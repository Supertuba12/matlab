%% Rolls 1000 dice and plots a histogram with the result.
clear;  % Clear variables.
close all;  % Close all open plots.
numRolls = 1000;
rollData = DiceRoll(numRolls);  % Rolls 1000 dice (1000x1-matrix).
histogram(rollData,'FaceColor','magenta');    % Creates a histogram of dice rolls.
title(sprintf('Roll distribution of %d rolls.', numRolls));
xlabel('Eye Number Shown');
ylabel('Occurances');
set(gca,'Xtick',1:6);