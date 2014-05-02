class ListsController < ApplicationController
  
  def new
    unless session[:user_id] != nil
      flash[:notice] = "You must log in!"
      redirect_to new_session_path
      return
    end
    @current=get_current
    @list= List.new
    unless @current.admin
      redirect_to '/games', notice: "You do not have permission to do that!"
      return
    end
  end
  
  def get_current
    if(session[:user_id] == nil)
      return nil
    else
      return User.find(session[:user_id])
    end
  end 
  
  def create
    @current=get_current
    
    @list = List.new
    @list.game_id= params[:list][:game_id]
    @list.user_id= params[:list][:user_id]
    @list.gone_out= params[:list][:gone_out]
    @list.time= Date.today     
    
    if @list.save
      redirect_to '/games', notice: "Added to queue"
      
    else
      render 'new'
    end
    
  end
  
  def destroy
    @list = List.find(params[:id])
    
    @list.destroy
    redirect_to user_lists_path(:user_id)
  end
  
  def index
    @current=get_current
    #@queue= @current.queues
    #@list= List.all
    @list=List.find_all_by_user_id(@current.id)
    
  end
  
end
