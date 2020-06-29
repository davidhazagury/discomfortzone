class FavouritesController < ApplicationController

  before_action :set_event

  def create
    if @event.favourited?(current_user)
      @favourite = Favourite.where(user: current_user).where(event: @event).first
      authorize @favourite
      @favourite.delete
    else
      @favourite = Favourite.new(user: current_user, event: @event)
      authorize @favourite
      @favourite.save
    end
    # redirect_to events_path, anchor: "event-#{@favourite.event.id}"
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    authorize @favourite
    @favourite.destroy
    # redirect_to events_path, anchor: "event-#{@favourite.event.id}"
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end
