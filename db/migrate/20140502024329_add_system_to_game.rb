class AddSystemToGame < ActiveRecord::Migration
  def change
    add_column :games, :system, :string
  end
end
