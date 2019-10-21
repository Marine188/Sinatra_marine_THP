require 'gossip' # on lie les fichiers entre eux

class ApplicationController < Sinatra::Base #création d'une classe ApplicationController qui hérite (<) de la classe Sinatra::Base. Grâce à l'héritage, ApplicationController aura toutes les fonctionnalités que propose la classe Sinatra::Base (= toutes les fonctionnalités de base de Sinatra).

    get '/' do # "si quelqu'un va sur l'URL '/', exécute le code qui suit
      erb :index, locals: {gossips: Gossip.all} #Sinatra comprend tout seul qu'il doit aller chercher le fichier index.erb rangé dans le dossier /views
    end

    get '/gossips/new/' do #on crée la nouvelle instance de Gossip. Et en lui appliquant un .save, on veut qu'elle soit inscrite dans la base de donnée
      erb :new_gossip
    end

    post '/gossips/new/' do #mettre dans gossip.csv
      Gossip.new(params["gossip_author"], params["gossip_content"]).save #params est un hash qui va stocker temporairement les informations que nous envoie l'utilisateur. Cela peut être une information quand il fait un GET (avec par exemple une URL du genre /facebook.com/username), ou alors un formulaire qu'il nous soumet avec un POST
      redirect '/' #une fois crée => redirection vers la page d'acceuil
    end

    get '/gossips/:id/' do # lorsque je vais sur : http://localhost:4567/gossips/2/ ...
       erb :show, locals: {gossips: Gossip.find(params[:id].to_i)} 
    end
     # _______________________ jusqu'à la tout fonctionne en faisant http://localhost:4567/gossips/2/

end
