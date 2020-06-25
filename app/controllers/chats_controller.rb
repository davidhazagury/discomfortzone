class ChatsController < ApplicationController

  def show
    @event = Event.find(params[:event_id])
    @message = Message.new

    authorize :chat, :show?
  end
end
