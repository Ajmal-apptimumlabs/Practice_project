class ApplicationController < ActionController::Base
    # ...
    before_action :authenticate_admin_user!

    
    include Pundit
    
    
    # ...
  end
  