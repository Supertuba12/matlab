%% Rolls 1000 dice and plots a histogram with the result.
clear;  % Clear variables.
close all;  % Close all open plots.
rollData = diceRoll(1000);  % Rolls 1000 dice (1000x1-matrix).
histogram(rollData);    % Creates a histogram of dice rolls.