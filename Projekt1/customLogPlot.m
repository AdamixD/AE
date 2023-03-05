function stop = customLogPlot(x,optimValues,state)
    stop = false;
    
    switch state
        case 'init'
            axx = gca;
            axx.YScale = 'log';
            hold on;
            xlabel('Iteracje', 'Interpreter', 'latex');
            ylabel('Wartość funcji celu', 'Interpreter', 'latex');
        case 'iter'
            plot(optimValues.iteration, optimValues.fval, '.', 'Color', 'red', 'MarkerSize', 20);
        case 'done'
            stop = true;
    end
end