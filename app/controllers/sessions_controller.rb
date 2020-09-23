class SessionsController < ApplicationController

    def new
    end
    
    def create
        session[:username] = params[:username]
        if params[:name] && params[:name] != ""
             session[:name] = params[:name]
            redirect_to '/'
        else
            redirect_to '/login'
        end
        
    end

    def destroy
        session.delete :username
        if session[:name]
            session.delete :name
        end
    end
end