class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    @user.admin= false
    
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
      
    else
      render 'new'
    end
  end
  
  def index
    
  end
  
  def destroy
    @user = User.find(params[:id])
    session.destroy
    @user.destroy
    redirect_to new_session_path, notice: "User successfully deleted."
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :address, :city, :state, :cc_number, :cc_type, :cc_security)
    
  end
  
end
