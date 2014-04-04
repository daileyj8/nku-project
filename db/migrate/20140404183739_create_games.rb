class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :num_in_stock
      t.string :genre
      t.string :rating
      t.string :description
      
      t.timestamps
    end
  end
end
