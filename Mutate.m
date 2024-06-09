function mutated = Mutate(offspring, mutationRate)
    [popSize, nCities] = size(offspring);
    mutated = offspring;
    for i = 1:popSize
        if rand < mutationRate
            mutationPoints = randperm(nCities, 2);
            temp = mutated(i, mutationPoints(1));
            mutated(i, mutationPoints(1)) = mutated(i, mutationPoints(2));
            mutated(i, mutationPoints(2)) = temp;
        end
    end
end
