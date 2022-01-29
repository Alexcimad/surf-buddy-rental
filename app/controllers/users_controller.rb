class UsersController < ApplicationController

    #READ one -----------------------------
    def show
        @user = User.find(params[:id])
    end

    # #CREATE -----------------------------
    # def new
    #     @user = User.new
    # end

    # def create
    #     @user = User.new(user_params)
    #     @user.save

    #     redirect_to user_path(@user)
    # end

    #UPDATE -----------------------------
    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
    end

    #DELETE -----------------------------
    def destroy
        @user = User.find(params[:id])
        @user.destroy
    
        redirect_to root_path
    end

    private #------------------------------------------------------

    def user_params
        params.require(:user).permit(:email)
    end

end
