class BooksController < ApplicationController
  def index
  end

  def create
    book = Book.new(book_params)
    book = current_user
    book.save
    redirect_to book_path(book)
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def book_params
    params.permit(:title, :body)
  end
end
