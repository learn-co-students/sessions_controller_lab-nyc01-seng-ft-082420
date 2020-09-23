class SessionsController < ApplicationController

    def new
    end
    
    def create
        session[:username] = params[:username]
        if params[:name]
            session[:name] = params[:name]
        end
        redirect_to '/'
    end

    def destroy
        session.delete :username
        if session[:name]
            session.delete :name
        end
    end
end