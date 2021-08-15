class AddSlugAuthorToAuthors < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :slug_author, :string
  end
end
