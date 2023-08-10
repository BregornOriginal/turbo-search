class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Product, public: true

    return unless user.present?

    can :read, SearchQuery, user:
  end
end
