class GoalPolicy < ApplicationPolicy

  def create?
    # Need to make this more advanced
    user.present?
  end

  def destroy?
    user_is_owner?
  end

  def update?
    user_is_owner?
  end

  private

  def user_is_owner?
    record.user == user
  end
end
