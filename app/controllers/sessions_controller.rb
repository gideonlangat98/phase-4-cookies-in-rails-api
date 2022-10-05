class SessionsController < ApplicationController
  
  def index
    session[:session_hello] ||= "Nairobi"
    cookies[:cookies_hello] ||= "World"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
