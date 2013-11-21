class SessionsController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]
    writer = Writer.find_by_provider_and_uid(auth["provider"], auth["uid"]) || Writer.create_with_omniauth(auth)
    session[:writer_id] = writer.id
    redirect_to root_url
  end

  def destroy
    session[:writer_id] = nil
    redirect_to root_url
  end

end
