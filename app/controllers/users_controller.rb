class UsersController < ApplicationController
  def show
    @books = Book.all
    @user = User.find(params[:id])
    @book = Book.new
  end

  def index
    @users = User.all
    @user = current_user
    @book = Book.new
    
  end

  def edit
  end

  private

  def user_params
    params.require(:User).permit(:name, :introduction)
  end
end
