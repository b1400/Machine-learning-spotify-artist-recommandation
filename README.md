# Machine-learning-spotify-artist-recommandation
IA de recommandation d'artistes basé sur une base de données kraggle. Extraction, nettoyage et élaguage des données afin de trouver des matchs et suggérer des artistes à l'utilisateur. 
L'algorithme se base sur le modèle Apriori pour déterminer des associations redondantes dans les playlists des users détaillées dans le dataset. On fait des groupes pour le même artiste en veillant à bien séparer les featurings. 
Ces associations peuvent ensuite faire partie d'un système à base de règles (logique basique de l'IA) (voir fichier .clp).

------------

Le fichier Notebook_spotify_suggestions.ipynb contient l'algorithme apriori.

Le fichier resultats_apriori.csv contient les associations résultantes.

Le fichier spotify_subset.csv est un sous-dataset extrait de la DB de Kaggle.


-----------

Source des données:
https://www.kaggle.com/datasets/solomonameh/spotify-music-dataset
