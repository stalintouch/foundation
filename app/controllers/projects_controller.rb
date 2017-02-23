class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: "Project has been save"
    else
      render 'new'
    end
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: "project has been updated"
    else
      render 'edit'
    end
  end

  def show
  end

  def edit
  end

  private

    def find_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:title, :introduction, :description1, :description2, :description3, :image)
    end
end
