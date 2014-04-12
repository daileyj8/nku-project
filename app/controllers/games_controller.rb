class GamesController < ApplicationController
  
  def new
    @game= Game.new
  end
  
  def create
    @game = Game.new
    @game.name= params[:game][:name]
    
    @game.genre= params[:game][:genre]
    @game.num_in_stock= params[:game][:num_in_stock]
    @game.rating= params[:game][:rating]
    @game.description= params[:game][:description]
    @game.on_hand= params[:game][:on_hand]
    
    if @game.save
      redirect_to '/games/new'
      
    else
      render 'new'
    end
  end
  
  def get_current
    if(session[:user_id] == nil)
      return nil
    else
      return User.find(session[:user_id])
    end
  end 

  def soon
  end
  
  def index
    @games= Game.all
    @current=get_current
    unless session[:user_id] != nil
      flash[:notice] = "You must log in!"
      redirect_to new_session_path
      return
    end
    
    if params[:genre_select]
      @selected= Game.find_all_by_genre(params[:genre_select])
      @games= @selected
      
    end
  end
end
