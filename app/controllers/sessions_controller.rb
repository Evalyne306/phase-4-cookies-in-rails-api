class SessionsController < ApplicationController
  
  def index
    byebug
    session[:session_hello] ||= "Hello"
    cookies[:cookies_hello] ||= "Hello"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
