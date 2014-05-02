class List < ActiveRecord::Base
  
  belongs_to :user
  validates :user_id, :uniqueness => { :scope => :game_id }
  
  
end