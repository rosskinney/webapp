class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :projects, :author_name, :developer_name
  end
end