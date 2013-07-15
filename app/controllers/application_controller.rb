class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_page
    session[:page]
  end
end
