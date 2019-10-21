require 'csv'
require 'pry'

class Gossip
  attr_accessor :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save # sauvegarder les gossip dans le csv
    CSV.open("./db/gossip.csv", "ab") do |csv|  # on ouvre le CSV en mode écriture (ab), le CSV a le path db/gossip.csv
        csv << [@author, @content] #on insert le'auteur et le gossip (2colonnes auteur et content)
  end
  end

  def self.all #cette méthode va récupérer chacune des lignes de notre CSV, en fait un objet Gossip avec son author et content puis ressort un array avec tous nos potins. Maintenant il n'y a plus qu'à afficher nos potins dans notre site.
    all_gossips = [] # on initialise dans un tableau vide de tous les gossips
    CSV.read("./db/gossip.csv").each do |csv_line|# va chercher chacune des lignes du csv do avec each
    all_gossips << Gossip.new(csv_line[0], csv_line[1])# crée un gossip avec les infos de la ligne
  end
    return all_gossips # on affiche all_gossips
  end

  def self.find(id) #cette methode va récuperer le gossip avec son ID chaque gossip aura sa page
     return Gossip.all[id]
    end

end


#binding.pry #pour faire les tests
#gossip = Gossip.new.save
