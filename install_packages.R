# Script d'installation des packages nécessaires pour reproduire les analyses
# Thèse de Yoann Ducoux sur la marque employeur

# Fonction pour installer les packages s'ils ne sont pas déjà installés
install_if_missing <- function(packages) {
  new_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
  if(length(new_packages)) {
    message("Installation des packages manquants : ", paste(new_packages, collapse=", "))
    install.packages(new_packages)
  } else {
    message("Tous les packages sont déjà installés.")
  }
  
  # Charger tous les packages
  message("Chargement des packages...")
  for(pkg in packages) {
    suppressMessages(library(pkg, character.only = TRUE))
  }
}

# Liste des packages nécessaires
required_packages <- c(
  # Packages de base pour l'analyse
  "tidyverse",  # inclut dplyr, ggplot2, tidyr, etc.
  "knitr",
  "rmarkdown",
  
  # Packages pour la visualisation
  "ggplot2",
  "ggtext",
  "grid",
  
  # Packages pour l'analyse SEM
  "lavaan",     # pour les modèles d'équations structurelles
  "semTools",   # outils supplémentaires pour SEM
  "semPlot",    # visualisation des modèles SEM
  
  # Packages pour l'imputation des données manquantes
  "mice",       # imputation multiple
  "VIM",        # visualisation des données manquantes
  
  # Packages pour l'analyse psychométrique
  "psych",      # analyses factorielles, alpha de Cronbach
  "MVN",        # tests de normalité multivariée
  
  # Packages pour la présentation des résultats
  "kableExtra", # tableaux améliorés
  "DT",         # tableaux interactifs
  "htmltools",  # outils HTML
  
  # Autres packages utiles
  "car",        # pour les tests statistiques
  "effectsize", # tailles d'effet
  "corrplot",   # visualisation des corrélations
  "ggrepel"     # étiquettes non superposées dans ggplot2
)

# Installer et charger les packages
install_if_missing(required_packages)

message("Configuration terminée ! Tous les packages nécessaires sont installés et chargés.")
message("Vous pouvez maintenant exécuter le fichier analyse_vf.qmd")
