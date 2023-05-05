function [state, options] = outputfun(options, state, flag)
    Skrypt1;
    if isequal(flag,'iter')
        figure(2)
        plot(state.Generation, min(state.Score), 'r.')
        plot(state.Generation, max(state.Score), 'g.')
        plot(state.Generation, mean(state.Score), 'b.')

        figure(3)
        plot(state.Generation, sum(state.Population.*weights'), 'k.');

    elseif isequal(flag,'init')
        figure(2)
        title("Score");
        hold on;
        xlabel("Generation");
        plot(state.Generation, min(state.Score), 'r.')
        plot(state.Generation, max(state.Score), 'g.')
        plot(state.Generation, mean(state.Score), 'b.')
        legend('minimum score','maximum score','average score','AutoUpdate','off')
        hold on;

        figure(3)
        title("Weight of backpack");
        xlabel("Generation");
        hold on;
    end
end