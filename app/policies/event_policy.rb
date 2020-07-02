class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.where("start_time > ?", DateTime.now)
    end
  end
  def new?
    return true
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
