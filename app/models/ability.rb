class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, SearchQuery, user_id: user
    return unless user.present?
  end
end
