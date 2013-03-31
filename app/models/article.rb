class Article < ActiveRecord::Base
  attr_accessible :title, :body, :tag_list, :image, :author_name

  has_many :comments
  has_many :taggings
  has_many :tags, :through => :taggings

  has_attached_file :image

  scope :years_and_months, (lambda do
    year = "date_part('year', created_at) AS YEAR"
    month = "date_part('month', created_at) AS MONTH"
    select("DISTINCT #{year}, #{month}").order("year DESC, month DESC")
  end)

  scope :by_year_and_month, (lambda do |year_and_month_string|
    year_and_month = Date.parse(year_and_month_string)
    sql = "date_part('year', created_at) = ? AND date_part('month', created_at) = ?"

    where([sql, year_and_month.year, year_and_month.month])
  end)

  def self.formatted_years_and_months
    years_and_months.map do |ym|
      "#{ Date::MONTHNAMES[ym.month.to_i] } #{ ym.year }"
    end
  end

  def tag_list
    return self.tags.join(", ")
  end

  def tag_list=(tags_string)
    self.taggings.destroy_all

    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq

    tag_names.each do |tag_name|
      tag = Tag.find_or_create_by_name(tag_name)
      tagging = self.taggings.new
      tagging.tag_id = tag.id
    end
  end
end
