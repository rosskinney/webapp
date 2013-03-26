class ArchivesController < ApplicationController
	def index
       @articles = Article.all(:select => "title, id, created_at", :order => "created_at DESC")
       @article_months = @articles.group_by { |t| t.created_at.beginning_of_month }
	end

end
