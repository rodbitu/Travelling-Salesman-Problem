% Script principal: TSP_GeneticAlgorithm.m

% Parâmetros do AG
numCities = 30;
populationSize = 60;
numGenerations = 300;
mutationRate = 0.001;
crossoverRate = 0.6;

% Gerar coordenadas das cidades
cities = rand(numCities, 2);

HeatMap(cities)

% Inicializar a população
population = InitializePopulation(populationSize, numCities);

% Avaliar a população inicial
fitness = EvaluatePopulation(population, cities);

% Loop principal do AG
for generation = 1:numGenerations
    % Seleção
    selectedPopulation = Selection(population, fitness);
    
    % Cruzamento
    newPopulation = Crossover(selectedPopulation, crossoverRate);
    
    % Mutação
    newPopulation = Mutate(newPopulation, mutationRate);
    
    % Avaliação
    fitness = EvaluatePopulation(newPopulation, cities);
    
    % Atualizar a população
    population = newPopulation;
    
    % Melhor solução da geração
    [bestFitness, bestIdx] = min(fitness);
    bestSolution = population(bestIdx, :);
    
    % Mostrar progresso
    fprintf('Geração %d: Melhor Distância = %.2f\n', generation, bestFitness);
end

% Plotar a melhor rota encontrada
figure;
plot(cities(bestSolution, 1), cities(bestSolution, 2), 'ro-');
hold on;
plot([cities(bestSolution(end), 1), cities(bestSolution(1), 1)], [cities(bestSolution(end), 2), cities(bestSolution(1), 2)], 'ro-');
title('Melhor Rota Encontrada');
xlabel('X');
ylabel('Y');
grid on;

% Adicionar números de identificação aos pontos
for i = 1:numCities
    text(cities(i, 1), cities(i, 2), num2str(i), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
end
