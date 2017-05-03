function DistributionHistogram(numDice)
%% Rolls numDice dice and plots a histogram with the resulting eye numbers.
rollData = DiceRoll(numDice);  % Rolls 1000 dice (1000x1-matrix).
histogram(rollData,'FaceColor','magenta');    % Creates a histogram of dice rolls.
title(sprintf('Roll distribution ofolp %d rolls.', numDice));
xlabel('Eye Number Shown');
ylabel('Occurances');
set(gca,'Xtick',1:6);
end