class EventsController < ApplicationController
  def index

    # @events = Event.all # ---BEFORE PUNDIT---
    @events = policy_scope(Event) # FOR PUNDIT. Optional: .order(created_at: :desc)
  end

  def show
    @event = Event.find(params[:id])
    authorize @event # FOR PUNDIT
    @markers = [{ # Creates an array with one marker, easiest way to do it
      lat: @event.latitude,
      lng: @event.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { event: @event })
    }]
  end
end






# ------IF WE WANT A MAP IN THE INDEX---------
# @events_geocoded = Event.geocoded
# @markers = @events_geocoded.map do |event|
#   {
#     lat: event.latitude,
#     lng: event.longitude,
#     infoWindow: render_to_string(partial: "info_window", locals: { event: event })
#   }
# end
# ---------------------------------------------
