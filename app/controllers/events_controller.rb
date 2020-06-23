class EventsController < ApplicationController
  def index
    @events = Event.all
    # -----------------------------------------------------------
    # Ignore the code below, this is only in case we need a map on the index page:)
    @events_geocoded = Event.geocoded # <= returns all the events that have been saved with an address
    @markers = @flats.map do |event| # <= creates an array of all the markers from ^
      {
        lat: event.latitude,
        lng: event.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { event: event })
      }
    end
    # -----------------------------------------------------------
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
