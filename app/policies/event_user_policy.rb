class EventUserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.present? && !user_is_owner?
  end

  def update?
    user.present? && user_is_owner?
  end

  private

  def user_is_owner?
    record.event.user == user
  end
end
