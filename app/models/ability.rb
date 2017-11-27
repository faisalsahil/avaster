class Ability
  include CanCan::Ability
  
  def initialize(user)
    unless user.nil?
      role = user.roles.last.name
      
      if role == AppConstants::SUPER_ADMIN
        super_admin user
      end
      
      all_users user
    end
  end
  
  def super_admin(user)
    can :manage, :dashboard_controller
    can :manage, User
    can [:add_user], User
    can :manage, Country
    can :manage, Currency
  end
  
  def all_users(user)
  
  end
  
end
