function signal_temporel = modulationOFDM(symboles, N)
    % symboles : vecteur de symboles modulés (longueur <= N)
    % N : nombre de sous-porteuses (taille de l'IFFT)
    % signal_temporel : signal OFDM dans le domaine temporel
    
    % Création d'un vecteur de N zéros
    symboles_freq = zeros(N, 1);
    
    % Placement des symboles (centrés autour de DC)
    nb_symboles = length(symboles);
    if nb_symboles > N
        error('Nombre de symboles supérieur au nombre de sous-porteuses');
    end
    
    % Placement centré : indices 1 à nb_symboles
    symboles_freq(1:nb_symboles) = symboles(:);
    
    % Application de l'IFFT
    signal_temporel = ifft(symboles_freq, N);
    
    % Forcer l'annulation de la moyenne (composante DC)
    signal_temporel = signal_temporel - mean(signal_temporel);
end