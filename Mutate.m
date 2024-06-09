% Função: Mutate.m
function newPopulation = Mutate(population, mutationRate)
    newPopulation = population;
    for i = 1:size(population, 1)
        if rand < mutationRate
            idx = randperm(size(population, 2), 2);
            newPopulation(i, idx) = newPopulation(i, flip(idx));
        end
    end
end
