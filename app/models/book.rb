class Book < ApplicationRecord
  belongs_to :author
  before_create :slugify

  def slugify
    self.slug_book = book_name.parameterize
  end
end
