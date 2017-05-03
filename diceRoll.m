function result = diceRoll(numDice)
%% Rolls numDice dice and returns the resulting values.

result = randi([1 6],1,numDice);    % Randomize numDice integers between 1 and 6.

end