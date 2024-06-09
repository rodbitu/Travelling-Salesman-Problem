function population = InitializePopulation(popSize, nCities)
    population = zeros(popSize, nCities);
    for i = 1:popSize
        population(i, :) = randperm(nCities);
    end
end
