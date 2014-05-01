class RenameQueue < ActiveRecord::Migration
  def change
    
    rename_table :queues, :lists
    
  end
end
