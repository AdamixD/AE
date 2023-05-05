Skrypt1;

options = optimoptions('ga',...
            'PopulationType', 'bitstring',...
            'PlotFcn', {@gaplotbestf, @gaplotbestindiv, @outputfun},...
            'MaxGenerations', 100,...
            'MaxStallGenerations', 100,...
            'PopulationSize', 200,...
            'EliteCount', 1,...
            'SelectionFcn', {@selectionroulette},...
            'CrossoverFcn', {@crossovertwopoint},...
            'CrossoverFraction', 0.8,...
            'MigrationInterval', 1,...
            'CrossoverFcn', 'crossoverscattered',...
            'MigrationFraction', 0.2,...
            'FitnessScalingFcn', 'fitscalingrank');

[vector, maxValue] = ga(@(x)fun(x, weights, scores, W),32,[],[],[],[],[],[],[],[], options); % invoking the solver with the appropriate settings (using the genetic algorithm)
fprintf("Solution" + num2str(vector) + "\n");
fprintf("Total weight = " + sum(vector*weights) + "\n");
fprintf("Total score = " + sum(vector*scores) + "\n");
