class ProjectsController < ApplicationController
  before_action :set_project ,except: [:index, :new, :create]

  def index
    @projects = Project.all
  end

  def edit
 
  end

   def show
   
  end

  def update
    @project.update(project_params)

    flash[:notice] = "Project has been updated."
    redirect_to @project
  end
 
  private

  def set_project
     @project = Project.find(params[:id])
    rescue ActiveRecord::RecordNotFound
    flash[:notice] = "The project you were looking for could not be found."
    redirect_to projects_path
  end
  

  def project_params
    params.require(:project).permit(:name, :description)
  end

end
