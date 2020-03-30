class BooksController < ApplicationController
    before_action :authenticate_user!, only: [:index, :edit, :show]
    def top
    end
    def index
    	@book = Book.new
    	@books = Book.all
        @user = current_user
    end
    def create
    	book = Book.new(book_params)
    	book.user_id = current_user.id
    	if book.save
        flash[:notice] = "successfully"
    	redirect_to book_path(book.id)
    	else
    	@book = Book.new
    	@books = Book.all
        @user = User.find(current_user.id)
    	flash[:notice] = "error"
    	render :index
    	end
    end
    def show
        @book = Book.new
    	@booka = Book.find(params[:id])
        @user = @booka.user
    end
    def edit
        @book = Book.find(params[:id])
        if @book.user == current_user
        else
            redirect_to books_path
        end
    end
    def update
        book = Book.find(params[:id])
        if book.update(book_params)
        flash[:notice] = "successfully"
        redirect_to book_path(book.id)
        else
        @book = book
        flash[:notice] = "error"
        render :edit
        end
    end
    def destroy
    	@book = Book.find(params[:id])
    	@book.destroy
    	redirect_to books_path
    end
    private
    def book_params
    	params.require(:book).permit(:title, :body)
    end
end