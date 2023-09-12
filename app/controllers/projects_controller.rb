class ProjectsController < ApplicationController
    before_action :authenticate_admin_user!
    before_action :set_project, only: [:show, :edit, :update, :destroy]
    
  
    def create
      @project = Project.new(project_params)
      authorize @project
      
      if @project.save
        redirect_to @project, notice: 'Project was successfully created.'
      else
        render :new
      end
    end
  
    def update
      authorize @project 
      if @project.update(project_params)
        redirect_to @project, notice: 'Project was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      authorize @project
      @project.destroy
      redirect_to projects_url, notice: 'Project was successfully destroyed.'
    end
  
  
    private
  
    def set_project
      @project = Project.find(params[:id])
    end
  
    def project_params
      params.require(:project).permit(:name, :description, :manager_id)
    end
  end
  

 
  def index
    @project = Project.find(params[:id])
    authorize @project
  end
  

  
  