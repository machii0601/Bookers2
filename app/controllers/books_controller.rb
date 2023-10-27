class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book.id)
    else
      @user = current_user
      @books = Book.all
      render :index
      @book = Book.new
    end
  end

  def index
    @books = Book.all
    @book = Book.new
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
    @books = Book.new
  end

  def edit
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to book_path(@book.id)
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
