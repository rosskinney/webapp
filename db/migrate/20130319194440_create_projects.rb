class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    t.string     :title
    t.text       :body
    t.text       :developer_name
    t.text       :website_name
    t.string     :image_file_name
    t.string     :image_content_type
    t.integer    :image_file_size
    t.datetime   :image_updated_at
    t.timestamps
    end
  end
end

