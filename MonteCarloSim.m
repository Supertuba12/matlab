function MonteCarloSim(iterations)
%% Simulate getting 5 of a kind multiple times (iterations) and store the number of rolls it took each time.
    result = zeros(1,iterations);   % Initialize vector to store results in.
    for i = 1:iterations
        result(i) = GetFiveOfAKind();   % Simulate getting 5 of a kind and save number of rolls it took
    end
    close all;  % Close all open figures.
    histogram(result,'FaceColor','b');    % Creates a histogram of number of rolls.
    title(sprintf('Number of rolls to get 5 of a kind distribution for %d iterations.', iterations));
    xlabel('Number of rolls');
    ylabel('Occurances');
    set(gca,'Xtick',min(result):max(result));
    
    expectedValue = sum(result)/iterations;
    variance = (1/(iterations - 1)) * (sum((result - expectedValue).^2));
    fprintf('Expected value: %d\nVariance: %d\n', expectedValue, variance);
    
    
    % --- 2.8 ---
    hold on;
    % Sum om bars in histogram is equal to the amount of carried out
    % experiments 
    % Sum of probability is always 1. Multiply prob. with iterations.
    A = [0, 1/6, 1/36, 1/216, 1/1296;
         0, 5/6, 10/36, 15/216, 25/1296;
         0, 0, 25/36, 80/216, 250/1296;
         0, 0, 0, 120/216, 900/1296;
         0, 0, 0, 0, 120/1296];
    e1 = eye(5,1);
    e5 = [0;0;0;0;1];
    probability = zeros(1, max(result));
    for k = 1:max(result)
        probability(k) = ((e1')*(A^k)*e5)*(iterations/10);
    end
    histogram(probability, 'Facecolor', 'r'); 
end