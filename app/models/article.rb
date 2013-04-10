class Article < ActiveRecord::Base
  attr_accessible :title, :body, :tag_list, :image, :author_name

  has_many :comments
  has_many :taggings
  has_many :tags, :through => :taggings

  has_attached_file :image,
  :url  => "/assets/articles/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/articles/:id/:style/:basename.:extension"

  def self.search(search)
    if search
        find(:all, :conditions => ['title ILIKE ?', "%#{search}%"])
    else
       find(:all)
    end
  end 

  def tag_list
    return self.tags.join(", ")
  end # end of tag list

  def tag_list=(tags_string)
    self.taggings.destroy_all

    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq

    tag_names.each do |tag_name|
      tag = Tag.find_or_create_by_name(tag_name)
      tagging = self.taggings.new
      tagging.tag_id = tag.id
    end # end of do iteration
  end  # end of tag_list

  
end  # end of Article class




  

