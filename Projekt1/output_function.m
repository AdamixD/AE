function stop = output_function(x, optimValues, state)
    x_range = -3:0.1:3;
    y_range = -3:0.1:3;

    [X, Y] = meshgrid(x_range, y_range);

    Z = ones(length(X), length(Y));

    for i = 1:length(X)
        for j = 1:length(X(i, :))
            Z(i, j) = f([X(i, j) Y(i, j)]);
        end  
    end

    figure(1);
    surf(X, Y, Z);
    axis normal;
    hold on;

    plot3(x(1), x(2), f(x)+100, '.', 'Color', 'yellow', 'MarkerSize', 20);

    axis([-3 3 -3 3 0 100000]);
    axis equal;

    xlabel('$x_1$', 'Interpreter', 'latex');
    ylabel('$x_2$', 'Interpreter', 'latex');

    view(0,90)
    axis equal;

%     % Funkcja kreśląca wykres nie powinna robić nic innego niż kreślić wykresy. Tutaj dodatko
%     % wypisuje pewne informacje, ale nalezałoby takie rzeczy robić w funkcji
%     % wyjsciowej:
%     % https://www.mathworks.com/help/optim/ug/output-functions.html.
%     % Ja wypiszę informację tylko gdy optymalizator jest w trakcie pracy (są
%     % jeszcze stany inicjalizacji oraz finalizacji).
%     if(strcmp(state,'iter'))
%         fprintf('Rozwiązanie w i=%g iteracji wynosi x=[%g %g]\n',optimValues.iteration,x(1),x(2))
%     end

    stop=false;
end