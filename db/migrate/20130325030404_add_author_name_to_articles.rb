class AddAuthorNameToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :author_name, :text
    
end
