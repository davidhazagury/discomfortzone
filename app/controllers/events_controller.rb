class EventsController < ApplicationController
  def index
    @events = Event.all
   end

  def show
    @event = Event.find(params[:id])

    @markers = [{ # Creates an array with one marker, easiest way to do it
      lat: @event.latitude,
      lng: @event.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { event: @event })
    }]
  end
end
