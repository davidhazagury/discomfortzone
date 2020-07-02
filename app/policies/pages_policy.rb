class PagesPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.last(4)
    end
  end
  def home?
    return true
  end
end
