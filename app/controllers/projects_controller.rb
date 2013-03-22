class ProjectsController < ApplicationController

  before_filter :require_login, :except => [:index, :show]
  
  def index
    @projects = Project.all
  end

  def show
    #binding.pry
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])

    @project.save

    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:id])

    @project.destroy

    redirect_to projects_path
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(params[:project])

    flash[:message] = "Portfolio project '#{@project.title}' Updated!"

    redirect_to project_path(@project)
  end
end

