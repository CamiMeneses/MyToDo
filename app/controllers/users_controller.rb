class UsersController < ApplicationController
    def show
        @user=User.find(params[:id])
        @list=@user.lists
    end
    def destroy
        @user = User.find(params[:id])
        @user.destroy
    
        if @user.destroy
            redirect_to root_url
        end
    end
end