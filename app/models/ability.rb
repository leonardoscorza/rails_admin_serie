class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.kind == 'salesman'
        can :access, :rails_admin
        can :dashboard
        can :manage, Client, user_id: user.id
        can :manage, Sale, user_id: user.id
        can :read, Product, status: :active
        can :read, Discount, status: :active
        can :read, Comission, user_id: user.id
        can :manage, ProductQuantity, user_id: user.id
        can :manage, Address, user_id: user.id
      elsif user.kind == 'manager'
        can :manage, :all
      end
    end
  end
end
