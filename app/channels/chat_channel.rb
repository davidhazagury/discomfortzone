class ChatChannel < ApplicationCable::Channel
  # Heroku fix with Santi
  def subscribed
    event = Event.find(params[:id])
    stream_for event
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
