class BooksController < ApplicationController
  def index
      @book = Book.all
  end

  def show 
    # @author = Author.find(params[:author_id])
  end

  def create
      @author = Author.find(params[:author_id])
      @book = @author.books.create(book_params)
      redirect_to author_path(@author)
  end

  def destroy
      @author = Author.find(params[:author_id])
      @book = @author.books.find(params[:id])
      @book.destroy
      redirect_to author_path(@author)
  end


  private

  def book_params
      params.require(:book).permit(:name)
  end
end
