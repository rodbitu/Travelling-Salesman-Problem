function TSP_GeneticAlgorithm
    % N�mero de cidades
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

    % Par�metros do Algoritmo Gen�tico
    popSize = 60;
    nGenerations = 300;
    crossoverRate = 0.6;
    mutationRate = 0.001;

    % Inicializa��o da popula��o
    population = InitializePopulation(popSize, nCities);

    % Inicializa��o das vari�veis para armazenar a melhor rota e dist�ncia
    bestFitnessOverall = inf;
    bestRouteOverall = [];

    % Evolu��o
    for gen = 1:nGenerations
        % Avalia��o
        fitness = EvaluatePopulation(population, cities);

        % Sele��o
        selected = Selection(population, fitness);

        % Cruzamento
        offspring = Crossover(selected, crossoverRate);

        % Muta��o
        offspring = Mutate(offspring, mutationRate);

        % Substitui��o
        population = offspring;

        % Melhor solu��o na gera��o atual
        [bestFitness, bestIndex] = min(fitness);
        bestRoute = population(bestIndex, :);

        % Atualizar a melhor solu��o global
        if bestFitness < bestFitnessOverall
            bestFitnessOverall = bestFitness;
            bestRouteOverall = bestRoute;
        end

        % Plotando a melhor rota da gera��o atual
        plotRoute(cities, bestRoute);
        title(sprintf('Gera��o: %d, Dist�ncia: %.2f', gen, bestFitness));
        pause(0.01);
    end

    % Plotando a melhor rota geral ao final
    figure;
    plotRoute(cities, bestRouteOverall);
    title(sprintf('Melhor Rota Encontrada: Dist�ncia: %.2f', bestFitnessOverall));
end
