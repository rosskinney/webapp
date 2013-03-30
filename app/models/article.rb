class Article < ActiveRecord::Base
  attr_accessible :title, :body, :tag_list, :image, :author_name

  has_many :comments
  has_many :taggings
  has_many :tags, :through => :taggings

  has_attached_file :image

  
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

#binding.pry
=begin
  scope :by_years_and_months, lambda {|year_and_month_string| 
      years_and_months.to_s = Date.parse( year_and_month_string )
      
      where("YEAR(created_at) = ? AND MONTH(created_at) = ?",
        year_and_month.year, year_and_month.month)
    
  } # end of scope by year and monthS
  

  scope :years_and_months do



    Article.select("DISTINCT YEAR(created_at), MONTH(created_at)")
  end  # end of scope for years and months
=end


end  # end of Article class




  

