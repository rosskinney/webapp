class Project < ActiveRecord::Base
  attr_accessible :title, :body, :developer_name, :website_name, :image, :author_name
  has_attached_file :image
end
