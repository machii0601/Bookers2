class UsersController < ApplicationController
  def show
  end

  def index
    @users = User.all
  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to '/top'
  end

  def edit
  end

  private

  def user_params
    params.require(:User).permit(:name, :introduction)
  end
end
