class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name] != ''
      session[:name] = params[:name]
      if session[:name]
        redirect_to '/'
      else
        redirect_to '/login'
      end
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
  end
end
