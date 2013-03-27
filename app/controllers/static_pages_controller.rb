class StaticPagesController < ApplicationController
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

  def contact
  end

  def rss
  end
end
