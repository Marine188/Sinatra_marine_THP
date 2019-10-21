# the_gossip_project_sinatra

Projet : Une application en Sinatra

Marine Calderon

LANGAGES :
RUBY // HTML

Les grandes lignes :

- La page d'accueil du site affichera tous les potins que nous avons en base.
- Cette page d'accueil donnera un lien pour un formulaire où quiconque pourra ajouter un potin en base.
- Chaque potin aura une page dédiée.

----------------------------------------

Lancement du serveur : $ shotgun -p 4567

NB :

Une requête GET c'est juste demander d'afficher le contenu d'une URL donnée. Une requête POST c'est envoyer le contenu d'un formulaire et obtenir une réponse en retour.

Les routes sont les URL qui vont entraîner une réponse du serveur et donc une action. En écrivant get '/hello' do ---- end, tu as mis une route sur le GET de /hello. Cela indique au serveur : "si quelqu'un va sur /hello, voilà le code à exécuter".
