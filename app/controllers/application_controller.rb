class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def get_current
    if(session[:user_id] == nil)
      return nil
    else
      return User.find(session[:user_id])
    end
  end 
end
