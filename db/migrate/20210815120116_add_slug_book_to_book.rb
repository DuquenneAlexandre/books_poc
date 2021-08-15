class AddSlugBookToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :slug_book, :string
  end
end
