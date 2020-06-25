class FavouritePolicy < ApplicationPolicy
  # class Scope < Scope
  #   def resolve
  #     scope.all
  #   end
  # end

  def create?
    user.present?
  end

  def destroy?
    user.present? && user_is_owner?
  end

  private

  def user_is_owner?
    record.user == user
  end
end
