% Função: Crossover.m
function newPopulation = Crossover(population, crossoverRate)
    newPopulation = zeros(size(population));
    for i = 1:2:size(population, 1)-1
        parent1 = population(i, :);
        parent2 = population(i+1, :);
        if rand < crossoverRate
            [child1, child2] = OrderCrossover(parent1, parent2);
            newPopulation(i, :) = child1;
            newPopulation(i+1, :) = child2;
        else
            newPopulation(i, :) = parent1;
            newPopulation(i+1, :) = parent2;
        end
    end
end

function [child1, child2] = OrderCrossover(parent1, parent2)
    n = length(parent1);
    child1 = zeros(1, n);
    child2 = zeros(1, n);
    point1 = randi(n-1);
    point2 = point1 + randi(n-point1);
    child1(point1:point2) = parent1(point1:point2);
    child2(point1:point2) = parent2(point1:point2);
    fillPos1 = setdiff(1:n, point1:point2);
    fillPos2 = fillPos1;
    child1(fillPos1) = setdiff(parent2, child1, 'stable');
    child2(fillPos2) = setdiff(parent1, child2, 'stable');
end
