function symboles = modulationQPSK(bits)
    if mod(length(bits), 2) ~= 0
        error('Le nombre de bits doit être pair');
    end

   % 1. On regroupe les bits par paires (2 colonnes)
    paires = reshape(bits, 2, []).'; 

    % 2. On prépare le tableau de sortie
    num_symb = size(paires, 1);
    symboles = zeros(1, num_symb);

    for i = 1:num_symb
        % On récupère directement la ligne i (le dibit)
        dibit = paires(i, :); 
        
        % On convertit en décimal : bit1*2 + bit2
        valeur = dibit(1)*2 + dibit(2);

        switch valeur
            case 0 % bits [0 0]
                symboles(i) =  1 + 1j;
            case 1 % bits [0 1]
                symboles(i) = -1 + 1j;
            case 2 % bits [1 0]
                symboles(i) =  1 - 1j;
            case 3 % bits [1 1]
                symboles(i) = -1 - 1j;
        end
    end
end
