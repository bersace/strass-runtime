# Dépendances de [strass](https://github.com/bersace/strass)

[![Docker](https://img.shields.io/docker/build/bersace/strass-runtime.svg)](https://hub.docker.com/r/bersace/strass-runtime/)

Cette image Docker contient seulement PHP5-FPM avec SQLite, Imagick,
ghostscript, la locale fr_FR et divers outils pour les opérations sur strass. Un
utilisateur `strass` est créé avec son dossier `/strass`.

J'ai pas envie de l'appeler `php5-fpm-imagick-ghostscript`, je préfère
simplement faire une image pour strass.

Le but de cette image est de ne pas reconstruire cette partie qui change peu, et
ainsi gagner de l'énergie et du temps lors de mise-à-jour de strass.
