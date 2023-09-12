 class ProjectPolicy < ApplicationPolicy
    def create?
      user.manager?
    end
  
    def update?
      user.manager? 
    end
  
    def destroy?
      user.manager? 
    end
  end
  
