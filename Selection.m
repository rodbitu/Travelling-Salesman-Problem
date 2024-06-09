function selected = Selection(population, fitness)
    [popSize, ~] = size(population);
    selected = zeros(size(population));
    for i = 1:popSize
        idx = TournamentSelection(fitness);
        selected(i, :) = population(idx, :);
    end
end

function idx = TournamentSelection(fitness)
    tournamentSize = 5;
    participants = randi(length(fitness), tournamentSize, 1);
    [~, bestIdx] = min(fitness(participants));
    idx = participants(bestIdx);
end
