class Api::SessionsController < ApplicationController
    def create 
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
        if @user.nil?
            render json: ["Inavlid Username or Password"], status: 401
        else
            login!(@user)
            render "api/users/show"
        end
    end

    def destroy 
        logout!
         render json: { message: "Logout sucessful"}    
    end


end
