clear
clc

load('tesla.mat')
M = tesla;
disp(M)

% Compute largest drop, largest increase, largest variance, smallest variance, and highest difference
open = M(:, 1);
close = M(:, 4);

% Compute daily changes
dailyChanges = diff(close);

% Largest drop
largestDrop = min(dailyChanges);

% Largest increase
largestIncrease = max(dailyChanges);

% Variance
variance = var(close);

% Standard deviation
stdDeviation = std(close);

% Highest difference
highestDifference = max(close) - min(close);

% Display the results
fprintf('Largest Drop: %.2f\n', largestDrop);
fprintf('Largest Increase: %.2f\n', largestIncrease);
fprintf('Largest Variance: %.2f\n', variance);
fprintf('Smallest Variance: %.2f\n', stdDeviation);
fprintf('Highest Difference: %.2f\n', highestDifference);

% Vytvorime uifigure a panel pre pridanie ovládacích prvkov
fig = uifigure('Name', 'Grafy');
panel = uipanel(fig, 'Title', 'Výber Grafu');
panel.Position = [20 20 400 50];

% Pridame tlačítka pre výber typu/počtu hodnôt
button1 = uibutton(panel, 'Text', 'Otváracia hodnota');
button1.Position = [10 10 60 22];
button1.ButtonPushedFcn = @(src, event) plotGraph(M, 1);

button2 = uibutton(panel, 'Text', 'Najvyššia hodnota');
button2.Position = [80 10 60 22];
button2.ButtonPushedFcn = @(src, event) plotGraph(M, 2);

button4 = uibutton(panel, 'Text', 'Najnižšia hodnota');
button4.Position = [150 10 60 22];
button4.ButtonPushedFcn = @(src, event) plotGraph(M, 3);

button4 = uibutton(panel, 'Text', 'Konečná hodnota');
button4.Position = [220 10 60 22];
button4.ButtonPushedFcn = @(src, event) plotGraph(M, 4);

% Funkcia na vykreslenie stlpcoveho grafu v zavislosti od vybraneho typu/pocetu hodnot
function plotGraph(M, type)
    figure;
    switch type
        case 1
            bar(M(:, 1));
            title('OPEN');
        case 2
            bar(M(:, 2));
            title('HIGH');
        case 3
            bar(M(:, 3));
            title('LOW');
        case 4
            bar(M(:, 4));
            title('CLOSE');
    end
    xlabel('Počet dní');
    ylabel('Návštevnosť');
end

function [maxDropLow, segmentMaxDropLow] = findMaxDropLow(open, close, low)
    % Najdenie segmentu
    maxDropLow = 0;
    idxMaxDropLow = 0;
    segmentMaxDropLow = [];

    for i = 1:length(open)
        for j = i + 1:length(low)
            dropLow = low(i) - open(j);
            if dropLow > maxDropLow && (idxMaxDropLow == 0) || close(j) > close(idxMaxDropLow)
                maxDropLow = dropLow;
                idxMaxDropLow = j;
                segmentMaxDropLow = close(i:j);
            end
        end
    end
end
