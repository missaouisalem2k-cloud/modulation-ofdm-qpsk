# Modulation QPSK et OFDM en MATLAB

Implémentation pas à pas d'une chaîne d'émission numérique : des **bits** sont convertis en **symboles QPSK**, puis répartis sur des **sous-porteuses OFDM** grâce à une IFFT.

## Contenu

| Fichier | Rôle |
|---|---|
| `modulationQPSK.m` | Regroupe les bits par paires et associe à chaque paire un symbole complexe (±1 ± j) |
| `modulationOFDM.m` | Place les symboles sur N sous-porteuses et applique l'IFFT pour obtenir le signal temporel |
| `demo_qpsk_ofdm.m` | Démonstration : constellation QPSK, puis signal OFDM à 64 sous-porteuses (parties réelle et imaginaire) |

## Principe

- **QPSK** : 2 bits → 1 symbole complexe parmi 4 points de la constellation.
- **OFDM** : les symboles sont placés dans le domaine fréquentiel, chacun sur une sous-porteuse orthogonale ; l'**IFFT** donne le signal temporel à transmettre.

## Lancer

Dans MATLAB, depuis ce dossier :
```matlab
demo_qpsk_ofdm
```

## Compétences

Modulation numérique · QPSK · OFDM · FFT/IFFT · MATLAB

---
Projet académique (Master ISC) — Salem Missaoui, Université de Toulon.
