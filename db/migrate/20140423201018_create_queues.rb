class CreateQueues < ActiveRecord::Migration
  def change
    create_table :queues do |t|
      
      t.integer :game_id
      t.integer :user_id
      t.boolean :gone_out
      t.date :time
      
    end
  end
end
