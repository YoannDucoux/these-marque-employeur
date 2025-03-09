# etude_these
# Analyse de la marque employeur et crédibilité des signaux

Ce dépôt contient les analyses réalisées dans le cadre de la thèse de doctorat de Yoann Ducoux sur la structure cognitive permettant aux candidats d'évaluer un employeur potentiel.

## Contenu du dépôt

- `analyse_vf.qmd` : Document Quarto contenant l'ensemble des analyses
- `data/` : Dossier contenant les jeux de données
- `install_packages.R` : Script pour installer les packages nécessaires

## Objectif de l'étude

Cette étude vise à comprendre comment les candidats évaluent les informations sur un employeur potentiel, en se concentrant sur le rôle de la crédibilité dans la formation de l'image employeur.

## Variables du modèle

- **Note Glassdoor** : Note Glassdoor attribuée à l'employeur fictif (2,5/5, 3,5/5 ou 4,5/5)
- **Source** : Source de l'enquête de satisfaction (interne ou externe)
- **Congruence** : Perception de cohérence entre les informations
- **Crédibilité** : Perception de fiabilité des informations (CredE, CredGD, CredME)
- **Image** : Perception globale de l'employeur

## Reproduire les analyses

1. Clonez ce dépôt
2. Exécutez `install_packages.R` pour installer les dépendances
3. Ouvrez `analyse_vf.qmd` dans RStudio et exécutez le document

## Résultats

Une version HTML des résultats est disponible [ici]((https://rpubs.com/YoannDucoux/quantiphdYD)).
