class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:name])

    binding.pry


    return redirect_to login_path unless user

    authenticated = user.try(:authenticate, params[:password])


    return redirect_to login_path unless authenticated

    session[:user_id] = user.id

    redirect_to welcome_path
  end
end
