class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:name])

    return redirect_to :back unless user

    authenticated = user.try(:authenticate, params[:password])

    return redirect_to :back unless authenticated

    session[:user_id] = user_id

    redirect_to welcome_path
  end
end
