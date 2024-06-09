function fitness = EvaluatePopulation(population, cities)
    [popSize, nCities] = size(population);
    fitness = zeros(popSize, 1);
    for i = 1:popSize
        route = population(i, :);
        distance = 0;
        for j = 1:nCities-1
            distance = distance + norm(cities(route(j), :) - cities(route(j+1), :));
        end
        distance = distance + norm(cities(route(end), :) - cities(route(1), :));
        fitness(i) = distance;
    end
end
