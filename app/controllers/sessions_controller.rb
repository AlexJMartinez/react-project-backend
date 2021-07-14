class SessionsController < ApplicationController

    def create 
        @user = User.find_by(email: params[:user][:email])

        if @user && @user.authenticate(params[:user][:password]) 
            render json: @user
        else
            resp = {
                error: "Invalid User"
            }
            render json: resp, status: :unauthorized
        end
    end 

end
