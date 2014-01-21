class ProjectsController < ApplicationController

  def index
    @projects = Project.page params[:page]
  end

  def new
    @project = Project.new
  end
end
