class Api::UsersController < ApplicationController

def show 
    @user = User.find(params[:id])
end

def create
    @user = User.new(user_params)
    if @user.save 
        login!(@user)
        render :show
    else 
        render json: @user.errors.full_messages, status: 401
    end
end

def update 
    
    @user = User.find(params[:id])
    
    if @user && @user.update(user_params)
        render :show 
    elsif !@user 
        render json: ["couldnt find user"], status: 400
    else
        render json: @user.errors.full_messages, status: 401
    end
end

def delete 
    @user = User.find(params[:id])
    if @user 
        @user.destroy 
    else
        render ["couldn't find user"]
    end
end
    private 

    def user_params 
        params.require(:user).permit(:username, :email, :password, :photo)
    end

end