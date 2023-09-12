class BugsController < ApplicationController

    before_action :authenticate_admin_user! 
  
    def index
      @bugs = current_user.created_bugs 
    end
  
    def new
      @bug = Bug.new
    end
  
    def create
      @bug = Bug.new(bug_params)
      @bug.qa = current_user 
  
      if @bug.save
        redirect_to bugs_path, notice: 'Bug was successfully created.'
      else
        render :new
      end
    end
  end
  
