class AddShippingToUsers < ActiveRecord::Migration
  def change
    
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :cc_number, :integer
    add_column :users, :cc_type, :string
    add_column :users, :cc_security, :integer
    
  end
end
