class ProjectsController < ApplicationController
    before_action :authenticate_user! # Add this line if using Devise for authentication
  
    def index
      @projects = current_user.projects # Show projects managed by the current user
    end
  
    def new
      @project = Project.new
    end
  
    def create
      @project = current_user.projects.build(project_params)
  
      if @project.save
        redirect_to projects_path, notice: 'Project was successfully created.'
      else
        render :new
      end
    end
  
    # Define other actions like 'show,' 'edit,' 'update,' and 'destroy' as needed.
  end
  
  