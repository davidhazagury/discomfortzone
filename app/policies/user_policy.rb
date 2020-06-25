class UserPolicy < ApplicationPolicy
  def show?
    true
  end

  def update?
    user.present? && user_is_owner?
  end

  private

  def user_is_owner?
    record.user == user
  end
end
