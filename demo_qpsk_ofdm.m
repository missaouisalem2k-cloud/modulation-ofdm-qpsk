bits = [0 0 1 1 1 0 0 1];
symboles = modulationQPSK(bits);

figure;
plot(real(symboles), imag(symboles), 'o');
grid on;
xlabel('Partie réelle');
ylabel('Partie imaginaire');
title('Constellation QPSK')
N = 64;

% générer 64 symboles QPSK aléatoires
bits = randi([0 1],1,128); % 2 bits par symbole
symboles = modulationQPSK(bits);

signal_ofdm = modulationOFDM(symboles,N);

% tracer
figure;
subplot(2,1,1);
plot(real(signal_ofdm));
title('Partie réelle');

subplot(2,1,2);
plot(imag(signal_ofdm));
title('Partie imaginaire');


function signal_temporel = modulationOFDM(symboles, N)

% signal_OFDM : signal OFDM temporel
% N_CP : longueur du prefixe cyclique
% signal_avec_CP : signal avec CP insere


% 1. Extraire les N_CP derniers echantillons
X = zeros(1,N);

% 2. Placer les symboles au début
L = length(symboles);

X(1:L) = symboles;

% 3. Appliquer l'IFFT
signal_temporel = ifft(X);
end