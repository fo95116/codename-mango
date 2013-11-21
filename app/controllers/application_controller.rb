class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  #this will detect that ther is a user logged in aka "current_user"

  #this method will control the sessions. It will make sure that there is a current user logged in
  #at all times
  private

  def current_user
    @current_user ||= Writer.find(session[:writer_id]) if session[:writer_id]
  end

end
