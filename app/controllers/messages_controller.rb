class MessagesController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @message = Message.new(message_params)
    @message.event = @event
    @message.user = current_user
    authorize @message
    if @message.save
      EventChannel.broadcast_to(@event, render_to_string(partial: 'message', locals: { message: @message }))
      redirect_to event_chat_path(@event)  # Redirecting to its own page now
    else
      render "chats/show" # also changed that
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
