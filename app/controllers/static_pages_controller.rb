class StaticPagesController < ApplicationController

  before_filter  :set_archive_list
  def home
  end

  def portfolio
    
    @projects     = Project.limit(5).order("created_at DESC")
    @project      = Project.last
  end

  def services
  end

  def about
  end

  def blog
    
    @recent_posts = Article.limit(5).order("created_at DESC")
    @categories   = Tag.limit(6).order("name")
    @article      = Article.last

  end

   def set_archive_list
    binding.pry
    posts = Article.find(:all,:order => "created_at DESC")
    @archive_list = posts.collect do |p|
      [p.created_at.strftime("%b %Y"), p.created_at.year, p.created_at.month]
    end
    @archive_list.uniq!
  end



  def contact

  end

  def archives

  end

end  # end of class


