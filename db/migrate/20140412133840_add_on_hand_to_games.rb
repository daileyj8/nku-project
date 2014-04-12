class AddOnHandToGames < ActiveRecord::Migration
  def change
    add_column :games, :on_hand, :integer
  end
end
