function result = DiceRoll(numDice)
%% Rolls numDice dice and returns the resulting values.

% 2.1 Simulate a given number of dice rolls and return the result.
result = randi([1 6],1,numDice);    % Randomize numDice integers between 1 and 6.

end