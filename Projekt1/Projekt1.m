close all;
clear all;

%% Wyznaczenie zestawu parametrów
numer_indeksu = 310035;

rng(numer_indeksu)
randi(30)

% Otrzymany numer: 7

% Wykorzystywane parametry
a = -1.5;
b = -1;

X1 = 0.5;
Y1 = 0;

X2 = -0.5;
Y2 = -2;

X3 = -2.5;
Y3 = -2;

X4 = -2.5;
Y4 = 0;

%% Wykresy funkcji
% Określnie przedziałów dla x i y
x_range = -3:0.1:3;
y_range = -3:0.1:3;


% Wykres powierzchniowy 3D
figure;
plot_surface(@f, x_range, y_range);
% title('Wykres powierzchniowy 3D', 'Interpreter', 'latex');
xlim([-3 3])
ylim([-3 3])


% Wykres powierzchniowy 2D
figure;
plot_surface(@f, x_range, y_range);
% title('Wykres powierzchniowy 2D', 'Interpreter', 'latex');

axis([-3 3 -3 3 0 1000]);
axis equal;

view(0,90)
axis equal;


% Wykres konturowy
figure;
plot_contour(@f, x_range, y_range);
% title('Wykres konturowy', 'Interpreter', 'latex');
    
axis([-3 3 -3 3 0 1000]);
axis equal;

view(0,90)
axis equal;


%% Optymalizacja

% options = optimoptions(@fminunc, 'MaxIter', Inf, 'OutputFcn', @output_function, 'Display', 'iter');
% x = fminunc(@f, [X1 Y1], options);


% options = optimset('OutputFcn', @output_function, 'MaxIter', Inf, 'Display', 'iter');
% [x, fval] = fminsearch(@f, [X1 Y1], options);
% 
% fprintf('x = (%.10f, %.10f)\n',x(1),x(2))
% 
% % Wyświetlamy wyniki
% disp(['Minimum funkcji: ', num2str(fval)]);
% disp(['Argument minimalizujący: [', num2str(x'), ']']);


% Definiujemy funkcję celu, jej gradient oraz punkt startowy
fun = @(x) x(1)^2 + x(2)^2; % funkcja celu
grad = @(x) [2*x(1); 2*x(2)]; % gradient
x0 = [1; 1]; % punkt startowy

% Ustawiamy opcje optymalizacji
options = optimoptions('fminunc', 'OutputFcn', @output_function, 'Algorithm', 'quasi-newton');

% Wywołujemy fminunc, podając jako argumenty funkcję celu, punkt startowy i opcje optymalizacji
x = fminunc(fun, x0, options);

% Wyświetlamy wyniki
disp(['Argument minimalizujący: [', num2str(x'), ']']);








