class HomeController < ApplicationController
  allow_unauthenticated_access
  def index
    !authenticated? ? (redirect_to welcome_path) : (redirect_to events_path)
  end

  def welcome
  end
end
