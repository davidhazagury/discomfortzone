class ChatsController < ApplicationController
  def show
    @event = Event.find(params[:event_id])
    @message = Message.new
    authorize @event, policy_class: ChatPolicy
  end
end
