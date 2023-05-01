require 'pry'
require 'csv'

class Gossip

  attr_reader :content, :author


  def initialize(author, content)
    @author = author
    @content = content
  end


    #Ici on sauvegarde les gossips dans un tableau avec 2 colonnes author et content en CSV
  def save
    CSV.open("/home/maddev/THP/W5/D1/Franck-Sinatra/db/gossip.csv", "a") do |csv|
      csv << [@author, @content]
      csv.close
    end
  end


  def self.all
    all_gossips = []
    CSV.foreach("/home/maddev/THP/W5/D1/Franck-Sinatra/db/gossip.csv", "r") do |csv_line|
        all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips
  end


  def self.find(id)
    all_gossips = self.all
      return all_gossips[id-1]
    end


end

  binding.pry