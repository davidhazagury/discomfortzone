class FavouritesController < ApplicationController

  before_action :set_event

  def create
    @favourite = Favourite.new(user: current_user, event: @event)
    authorize @favourite
    @favourite.save
    redirect_to request.referrer
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    authorize @favourite
    @favourite.destroy
    redirect_to request.referrer
  end


  private

   def set_event
    @event = Event.find(params[:event_id])
   end
end
