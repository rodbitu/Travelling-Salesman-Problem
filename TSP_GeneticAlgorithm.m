function TSP_GeneticAlgorithm
    % Número de cidades
    nCities = 30;

    % Coordenadas fixas das cidades
    cities = [    
        95, 250;
        262, 102;
        22, 108;
        179, 320;
        142, 114;
        319, 231;
        324, 320;
        179, 42;
        323, 41;
        49, 189;
        179, 175;
        30, 251;
        30, 321;
        326, 107;
        107, 37;
        250, 246;
        244, 316;
        247, 40;
        84, 104;
        147, 246;
        121, 319;
        203, 108;
        325, 176;
        22, 176;
        88, 321;
        108, 182;
        193, 242;
        246, 173;
        37, 40;
        326, 263;
];

    % Parâmetros do Algoritmo Genético
    popSize = 60;
    nGenerations = 300;
    crossoverRate = 0.6;
    mutationRate = 0.001;

    % Inicialização da população
    population = InitializePopulation(popSize, nCities);

    % Inicialização das variáveis para armazenar a melhor rota e distância
    bestFitnessOverall = inf;
    bestRouteOverall = [];

    % Evolução
    for gen = 1:nGenerations
        % Avaliação
        fitness = EvaluatePopulation(population, cities);

        % Seleção
        selected = Selection(population, fitness);

        % Cruzamento
        offspring = Crossover(selected, crossoverRate);

        % Mutação
        offspring = Mutate(offspring, mutationRate);

        % Substituição
        population = offspring;

        % Melhor solução na geração atual
        [bestFitness, bestIndex] = min(fitness);
        bestRoute = population(bestIndex, :);

        % Atualizar a melhor solução global
        if bestFitness < bestFitnessOverall
            bestFitnessOverall = bestFitness;
            bestRouteOverall = bestRoute;
        end

        % Plotando a melhor rota da geração atual
        plotRoute(cities, bestRoute);
        title(sprintf('Geração: %d, Distância: %.2f', gen, bestFitness));
        pause(0.01);
    end

    % Plotando a melhor rota geral ao final
    figure;
    plotRoute(cities, bestRouteOverall);
    title(sprintf('Melhor Rota Encontrada: Distância: %.2f', bestFitnessOverall));
end
