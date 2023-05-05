function plot_contour(f, x_range, y_range)
    [X, Y] = meshgrid(x_range, y_range);

    Z = ones(length(X), length(Y));

    for i = 1:length(X)
        for j = 1:length(X(i, :))
            Z(i, j) = f([X(i, j) Y(i, j)]);
        end  
    end
    
    contour(X, Y, Z);
    colorbar;
    xlabel('$x$', 'Interpreter', 'latex');
    ylabel('$y$', 'Interpreter', 'latex');
end

