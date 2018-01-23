class BooksController < ApplicationController

	def new
		@club = Club.find(params[:club_id])
		@book = Book.new()
	end

	def index
		@club = Club.find(params[:club_id])
		@books = @club.books
		@book = Book.new
	end

	def create
		@club = Club.find(params[:club_id])
		@book = @club.books.new(book_params)
		if @book.save
			flash[:success] = "You created a book"
			redirect_to club_book_path(@club, @book)
		else
			render :new
		end
	end

	def show
		@club = Club.find(params[:club_id])
		@book = Book.find(params[:id])
	end

	private

	def book_params
		params.require(:book).permit(:title, :author, :description, :isbn)
	end

end
