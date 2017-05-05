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
end