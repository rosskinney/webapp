class ArticlesController < ApplicationController
  before_filter :require_login, :except => [:index, :show]
  
  def index
    @articles = Article.paginate(:page => params[:page], :per_page => 15)

    #@years_and_months = Article.years_and_months
    #Article.by_years_and_months( params[:year_and_month_string] )
    
  end
   
  def show
    @article      = Article.find(params[:id])
    @recent_posts = Article.limit(5).order("created_at DESC")
    @categories   = Tag.limit(6).order("name")
  end

  def new
    @article = Article.new
  end

  def create
    
    @article = Article.new(params[:article])

    @article.save

    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])

    @article.destroy

    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(params[:article])

    flash[:message] = "Article '#{@article.title}' Updated!"

    redirect_to article_path(@article)
  end
end