% Função: InitializePopulation.m
function population = InitializePopulation(popSize, numCities)
    population = zeros(popSize, numCities);
    for i = 1:popSize
        population(i, :) = randperm(numCities);
    end
end
