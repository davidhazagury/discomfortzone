class EventUserPolicy < ApplicationPolicy
  def create?
    user.present?
  end

  class Scope < Scope
    def resolve
      scope.all
    end

    def update?
      user.present?
    end
  end

end
