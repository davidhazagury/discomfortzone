class ChatPolicy < Struct.new(:user, :event)
  def show?
    true
  end
end
