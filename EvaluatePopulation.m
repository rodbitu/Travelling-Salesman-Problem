% Função: EvaluatePopulation.m
function fitness = EvaluatePopulation(population, cities)
    [popSize, numCities] = size(population);
    fitness = zeros(popSize, 1);
    for i = 1:popSize
        route = population(i, :);
        fitness(i) = CalculateRouteDistance(route, cities);
    end
end

function distance = CalculateRouteDistance(route, cities)
    numCities = length(route);
    distance = 0;
    for i = 1:numCities-1
        distance = distance + norm(cities(route(i), :) - cities(route(i+1), :));
    end
    distance = distance + norm(cities(route(end), :) - cities(route(1), :));
end
