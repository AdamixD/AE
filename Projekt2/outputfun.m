function [state, options] = outputfun(options, state, flag)
    Skrypt1;
    if isequal(flag,'iter')
        figure(2)
        plot(state.Generation, -min(state.Score), 'Marker', '.', 'Color', '#0072BD')
        plot(state.Generation, -max(state.Score), 'Marker', '.', 'Color', '#77AC30')
        plot(state.Generation, -mean(state.Score), 'Marker', '.', 'Color', '#EDB120')

        figure(3)
        plot(state.Generation, var(state.Score), 'Marker', '.', 'Color', '#0072BD');

    elseif isequal(flag,'init')
        figure(2)
        set(groot,'defaultAxesTickLabelInterpreter','latex');
        
        hold on;
        
        title("Wartosc funkcji celu", 'Interpreter', 'latex');
        xlabel("Pokolenie", 'Interpreter', 'latex');
        
        plot(state.Generation, -min(state.Score), 'Marker', '.', 'Color', '#0072BD');
        plot(state.Generation, -mean(state.Score), 'Marker', '.', 'Color', '#EDB120');
        plot(state.Generation, -max(state.Score), 'Marker', '.', 'Color', '#77AC30');

        legend('maksimum','srednia','minimum','AutoUpdate','off', 'Interpreter', 'latex', 'Location','southeast');
        
        hold on;

        figure(3)
        set(groot,'defaultAxesTickLabelInterpreter','latex');
        axx = gca;
        axx.YScale = 'log';
        title("Wariancja", 'Interpreter', 'latex');
        xlabel("Pokolenie", 'Interpreter', 'latex');
        hold on;
    end
end