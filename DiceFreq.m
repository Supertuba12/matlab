function mostFreq = DiceFreq(rolls)
% Takes a vector of 5 dice rolls and returns the eye number that is the
% most frequent.

if (size(rolls,1) == 1 && size(rolls,2) == 5)   % if rolls is a 1x5 matrix
    fprintf('Got dice rolls: %s\n', mat2str(rolls));
    % 2.2 Use the built-in function histcounts to count the occurances of each
    % eye number.
    C = categorical(rolls,[1,2,3,4,5,6]);   % Create categorical array.
    diceFreq = histcounts(C);   % Count number of elements in each category
    fprintf('The frequency of each eye number is: %s\n', mat2str(diceFreq));
    % ---- End of assignment 2.2 ----

    % 2.3 Return the eye count that has the highest frequency in rolls.
    mostFreq = find(diceFreq == max(diceFreq),1);   % Uses diceFreq to extract most freqent eye number.
    %mostFreq = mode(rolls);    % ALTERNATIVE: THIS DOESN'T USE diceFreq!
    fprintf('Most frequent number of eyes was: %d\n', mostFreq);
   
    % ---- End of assignment 2.3 ----
    
    % 2.4 
else
    fprintf('Please enter an array of size 1x5.\n');
end

end
