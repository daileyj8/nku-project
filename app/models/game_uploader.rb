require 'csv'

class GameUploader
 
  def initialize(file)
    
    CSV.parse(file.read, :headers => true) do |row|
      Game.create(name: row["name"],  num_in_stock: row["num_in_stock"], genre: row["genre"], rating: row["rating"], description: row["description"], on_hand: row["on_hand"], system: row["system"]) 
    end
  end
  
end