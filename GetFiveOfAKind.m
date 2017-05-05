function numRolls = GetFiveOfAKind()
    rolls = randi([1 6],1,5);   % Roll 5 dice (1-6).
    numRolls = 1;       % Counter for total rolls.
    C = categorical(rolls,[1,2,3,4,5,6]);   % Create categorical array for new dice.
    diceFreq = histcounts(C);   % Count number of elements in each category
    mostFreq = find(diceFreq == max(diceFreq),1);   % Find most frequent eye number.
    %fprintf('First roll, current dice are: %s, most frequent eye number is %d.\n',...
            %mat2str(rolls), mostFreq);  
    while max(diceFreq) ~= 5    % Do we need to re-roll any dice?
        for i = 1:5
            if (rolls(i) ~= mostFreq)    % Do we need to re-roll this dice?
                rolls(i) = randi([1 6],1,1);   % Re-roll dice.
            end
        end
        C = categorical(rolls,[1,2,3,4,5,6]);   % Create categorical array for new dice.
        diceFreq = histcounts(C);   % Count number of elements in each category
        mostFreq = find(diceFreq == max(diceFreq),1);   % Find most frequent eye number.
        numRolls = numRolls + 1;    % Increment number of total rolls.
        %fprintf('Rolled %d times, current dice are: %s, most frequent eye number is %d.\n',...
            %numRolls, mat2str(rolls), mostFreq);  
    end
    %fprintf('Getting five of a kind took %d rolls.\n', numRolls);
end