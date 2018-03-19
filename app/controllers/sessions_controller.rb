class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:name])

    return redirect_to :back unless user

    authenticated = user.try(:authenticate, params[:password])

    return redirect_to :back unless authenticated


  end
end
