class HomesController < ApplicationController
  def top
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to new_user_session_path
    else
      render :top
    end
  end

  def about
  end
end
