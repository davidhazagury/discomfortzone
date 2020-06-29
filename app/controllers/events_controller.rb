class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    # @events = Event.all # ---BEFORE PUNDIT---
    # @events = policy_scope(Event) # FOR PUNDIT BUT BEFORE SEARCH FEATURE. Optional: .order(created_at: :desc)
    if params[:query].present?
      # sql_query = "title ILIKE :query OR description ILIKE :query OR address ILIKE :query"
      sql_query = " \
        title ILIKE :query \
        OR description ILIKE :query \
        OR address ILIKE :query \
      "

      @events = policy_scope(Event).where(sql_query, query: "%#{params[:query]}%")
    else
      @events = policy_scope(Event)
    end
  end

  def show
    @event = Event.find(params[:id])
    @event_user = EventUser.new
    @message = Message.new
    authorize @event # FOR PUNDIT
    @participants = @event.event_users.accepted
    @markers = [{ # Creates an array with one marker, easiest way to do it
      lat: @event.latitude,
      lng: @event.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { event: @event })
    }]

    # For FAVOURITES
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    @event.user_id = current_user.id
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    authorize @event
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_time, :address, :photo, :end_time, :capacity)
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
