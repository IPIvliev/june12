class Ability 
  include CanCan::Ability 

  def initialize(user) 
    can :read, :all                   # allow everyone to read 

    if user 

        can :access, :rails_admin 

        if user.role == "admin" 
            can :manage, :all             # allow superadmins to do 
            can :dashboard  
            can :history, :all

        elsif user.role == "manager" 
            can :edit, :all    # allow admins to access given
            RailsAdmin.config do |config|
                config.model Order do
                    visible false
                end
                config.model Product do
                    visible false
                end
            end
        elsif user.role == "sales"
            RailsAdmin.config do |config|
                config.model User do
                    visible false
                end
                config.model Post do
                    visible false
                end
            end
       end 
    end 

  end 

end 