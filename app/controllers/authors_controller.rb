class AuthorsController < ApplicationController
  def index
    @pages_number = Author.all.size / 10
  end

  def new
  end

  def delete
  end

  def querry_books
    render json: Author.books_search(params["book_name"])
  end

  def search_authors
    render json: Author.authors_search(params["author_name"])
  end
  
end
