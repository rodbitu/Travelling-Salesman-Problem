% Função: Selection.m
function selectedPopulation = Selection(population, fitness)
    selectedPopulation = zeros(size(population));
    for i = 1:size(population, 1)
        idx = TournamentSelection(fitness);
        selectedPopulation(i, :) = population(idx, :);
    end
end

function idx = TournamentSelection(fitness)
    tournamentSize = 5;
    competitors = randi(length(fitness), tournamentSize, 1);
    [~, best] = min(fitness(competitors));
    idx = competitors(best);
end
