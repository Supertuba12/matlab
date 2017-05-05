function numRolls = DiceFreq(rolls)
%% Takes a vector of 5 dice rolls and returns the number of rolls it took to get 5 of a kind.

if (size(rolls,1) == 1 && size(rolls,2) == 5)   % if rolls is a 1x5 matrix
    fprintf('Got dice rolls: %s\n', mat2str(rolls));
    
    % 2.2 Uses the built-in function histcounts to count the occurances of each
    % eye number.
    C = categorical(rolls,[1,2,3,4,5,6]);   % Create categorical array.
    diceFreq = histcounts(C);   % Count number of elements in each category
    fprintf('The frequency of each eye number is: %s\n', mat2str(diceFreq));
    % ---- End of assignment 2.2 ----

    % 2.3 Finds the eye count that has the highest frequency in rolls.
    mostFreq = find(diceFreq == max(diceFreq),1);   % Uses diceFreq to extract most freqent eye number.
    %mostFreq = mode(rolls);    % ALTERNATIVE: THIS DOESN'T USE diceFreq!
    fprintf('Most frequent number of eyes was: %d\n', mostFreq);
    % ---- End of assignment 2.3 ----
    
    % 2.4 Constructs a vector of indices of dice that need to be re-rolled.
    reRoll = [];
    for i = 1:5
       if (rolls(i) ~= mostFreq)
           reRoll = [reRoll i];
       end
    end
    fprintf('The indices of dice to be re-rolled are: %s\n', mat2str(reRoll));    
    % ---- End of assignment 2.4 ----
    
    % 2.5 Re-rolls dice that should be re-rolled and count number of rolls 
    % before all dice show the same eye number.
    newRolls = rolls;   % Make a copy of initial rolls.
    numRolls = 1;       % Counter for total rolls.
    while max(diceFreq) ~= 5    % Do we need to re-roll any dice?
        for i = 1:5
            if (newRolls(i) ~= mostFreq)    % Do we need to re-roll this dice?
                newRolls(i) = randi([1 6],1,1);   % Re-roll dice.
            end
        end
        C = categorical(newRolls,[1,2,3,4,5,6]);   % Create categorical array for new dice.
        diceFreq = histcounts(C);   % Count number of elements in each category
        mostFreq = find(diceFreq == max(diceFreq),1);   % Find most frequent eye number.
        numRolls = numRolls + 1;    % Increment number of total rolls.
        fprintf('Re-rolled, rolled %d times, new dice are: %s, most frequent eye number is %d.\n',...
            numRolls, mat2str(newRolls), mostFreq);  
    end
    % ---- End of assignment 2.5 ----
    
else
    fprintf('Please enter an array of size 1x5.\n');
end

end
