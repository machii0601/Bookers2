class UsersController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update]
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def creat
    @user = User.new(user_params)
    @user.user.id = current_user.id
    if @user.save
      redirect_to book_path(book.id)
    else
      render :index
    end
  end

  def index
    @users = User.all
    @user = current_user
    @book = Book.new

  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:User).permit(:name, :introduction)
  end

  def is_matching_login_user
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to book_path(current_user.id)
    end
  end
end
