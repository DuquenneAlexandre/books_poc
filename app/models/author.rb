class Author < ApplicationRecord
  has_many :books
  before_create :slugify

  def slugify
    self.slug_author = author_name.parameterize
  end

  def self.authors_search(author_name)
    Book.where(author_id: Author.where("author_name like ?","%#{author_name}%").includes(:books).ids.uniq)
  end

  def self.books_search(book_name)
    Book.where("book_name like ?","%#{book_name}%")
  end

end
