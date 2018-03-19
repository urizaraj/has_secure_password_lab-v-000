class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create(strong_params)
    redirect_to welcome_path
  end

  def welcome
    
  end
end
