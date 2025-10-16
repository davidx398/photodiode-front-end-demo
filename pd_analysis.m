% project2_pd_analysis.m
% Photodiode I–V to Responsivity

% 1) Load the exported I–V data
data = readmatrix('pd.txt');   % [Vbias, Idark]
Vbias = data(:,1);
Idark = abs(data(:,2));           % take absolute value, A

% 2) Assume an optical power, e.g., 1 µW
Popt = 1e-6;  % watts

% 3) Responsivity (A/W)
Responsivity = Idark ./ Popt;

% 4) Plot Responsivity vs. Bias
figure;
plot(Vbias, Responsivity, '-o', 'LineWidth',1.5);
grid on;
xlabel('Bias Voltage (V)');
ylabel('Responsivity (A/W)');
title('Photodiode Responsivity vs. Bias');
