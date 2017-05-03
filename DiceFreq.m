function diceFreq = DiceFreq(rolls)
% Takes a vector of 5 dice rolls and returns a vector dice_freq
% with the respective frequency for each eye count. 

if size(rolls,2) == 5 
    % 2.2 Use the built-in function accumarray to count the freq for each eye
    % count and compile the answer into a column matrix which is then
    % transposed.

    diceFreq = accumarray(rolls',1,[6,1]); 
    diceFreq = diceFreq';
    disp(diceFreq);
    % ---- End of assignment 2.2 ----

    % 2.3 Return the eye count that has the highest frequency in rolls
    % Initial assumption will be that the side with one eye has the highest 
    % frequency. 

    maxFreq = 0;
    diceEye = 1;
    for i = 1:6
        if diceFreq(i) > maxFreq
            maxFreq = diceFreq(i);
            diceEye = i;
        end
    end
    disp(diceEye);
    % ---- End of assignment 2.3 ----
    
    % 2.4 
else
    disp('Please enter an array of size 1x5.');




end

end
