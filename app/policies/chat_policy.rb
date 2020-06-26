class ChatPolicy < ApplicationPolicy
  def show?
    user == record.user || record.participant?(user)
  end
end
