class GamesController < ApplicationController
  
  def new
    unless session[:user_id] != nil
      flash[:notice] = "You must log in!"
      redirect_to new_session_path
      return
    end
    @current=get_current
    @game= Game.new
    unless @current.admin
      redirect_to '/games', notice: "You do not have permission to do that!"
      return
    end
  end
  
  def create
    @current=get_current
    if @current.admin
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
    else
      redirect_to '/games', notice: "You do not have permission to do that!"
    end
  end
  
  def show
    unless session[:user_id] != nil
      flash[:notice] = "You must log in"
      redirect_to new_session_path
      return
    end
    @game= Game.find(params[:id])
   
  end
  
  def get_current
    if(session[:user_id] == nil)
      return nil
    else
      return User.find(session[:user_id])
    end
  end 

  def soon
    unless session[:user_id] != nil
      flash[:notice] = "You must log in!"
      redirect_to new_session_path
      return
    end
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
