function plotRoute(cities, route)
    clf;
    hold on;
    % Plotando as cidades
    plot(cities(:, 1), cities(:, 2), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
    % Plotando a rota
    for i = 1:length(route)-1
        plot([cities(route(i), 1), cities(route(i+1), 1)], [cities(route(i), 2), cities(route(i+1), 2)], 'b-', 'LineWidth', 2);
    end
    % Conectando o último ponto ao primeiro
    plot([cities(route(end), 1), cities(route(1), 1)], [cities(route(end), 2), cities(route(1), 2)], 'b-', 'LineWidth', 2);
    % Adicionando rótulos aos pontos
    for i = 1:size(cities, 1)
        text(cities(i, 1), cities(i, 2), sprintf(' %d', i), 'FontSize', 12);
    end
    hold off;
    axis equal;
    grid on;
end
