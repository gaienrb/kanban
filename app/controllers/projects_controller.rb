class ProjectsController < ApplicationController

  def index
    @projects = Project.page params[:page]
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:success] = "New Project Created!"
      redirect_to @project
    else
      flash.now[:error] = 'invalid name'
      render 'new'
    end
  end

  def show
  end

  private
    def project_params
      params.require(:project).permit(:name)
    end
end
