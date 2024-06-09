function offspring = Crossover(selected, crossoverRate)
    [popSize, nCities] = size(selected);
    offspring = zeros(popSize, nCities);
    for i = 1:2:popSize
        parent1 = selected(i, :);
        parent2 = selected(i+1, :);
        if rand < crossoverRate
            crossoverPoint = randi([1, nCities-1]);
            offspring(i, :) = [parent1(1:crossoverPoint) parent2(crossoverPoint+1:end)];
            offspring(i+1, :) = [parent2(1:crossoverPoint) parent1(crossoverPoint+1:end)];
        else
            offspring(i, :) = parent1;
            offspring(i+1, :) = parent2;
        end
    end

    % Reparar rotas para garantir que não haja duplicação de cidades
    for i = 1:popSize
        offspring(i, :) = repairRoute(offspring(i, :), nCities);
    end
end

function repairedRoute = repairRoute(route, nCities)
    repairedRoute = route;
    for i = 1:nCities
        while sum(repairedRoute == i) > 1
            duplicateIdx = find(repairedRoute == i, 1, 'last');
            availableCities = setdiff(1:nCities, repairedRoute);
            repairedRoute(duplicateIdx) = availableCities(1); % Seleciona o primeiro valor disponível
        end
    end
end
