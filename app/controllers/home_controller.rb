class HomeController < ApplicationController
  allow_unauthenticated_access
  def index
    redirect_to welcome_path if !authenticated?
  end

  def welcome
  end
end
