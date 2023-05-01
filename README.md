# Franck-Sinatra

A bit different from Frank Sinatra : https://open.spotify.com/artist/1Mxqyy3pSjf8kZZL4QVxS0


# README

## Commandes
- Lancer le serveur Rackup avec Puma (sur le port Sinatra) : `rackup -p 4567`
- Aller sur : [http://localhost:4567/](http://localhost:4567/)

## Introduction
- page d'accueil
  - => `/`
  - affichera la liste des potins par "ID"
  - lien renvoyant vers un formulaire afin de créér un nouveau potin
- page de chaque potin
  - => `/gossips/new/`
- définir des routes et endpoints
- utiliser les views (HTML/CSS)
- créer et avoir une base de données
- récupérer de l'information des formulaires
  - => `/gossips/x/`
- la stocker en base de données
  - => `/gossips/x/edit/`
- possibilité d'édition des potins
- lien renvoyant vers l'accueil du site