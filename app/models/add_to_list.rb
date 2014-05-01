class AddToList
  
  def initialize(cg, cu)
    
    List.create(game_id: cg, user_id: cu, gone_out: false, time: Date.today)
    
  end
  
end