class AddAuthorNameToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :author_name, :text
    
  end
end
