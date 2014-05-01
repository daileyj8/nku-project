class RenameQueue2 < ActiveRecord::Migration
  def change
    rename_table :queues, :lists
  end
end
