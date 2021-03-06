class EventUsersController < ApplicationController

  def index
    #@event_users = current_user.event_users
    @applications = policy_scope(current_user.applications)
    @event_users = policy_scope(current_user.event_users)
    @owned_events = current_user.events
    @applied_events = current_user.applied_events
  end

  def create
    @event_user = EventUser.new(strong_params)
    @event = Event.find(params[:event_id])
    @event_user.event = @event
    @event_user.user = current_user
    authorize @event_user

    if @event_user.save
      redirect_to event_users_path, notice: "You've succesfully applied"
    else
      flash[:alert] = @event_user.errors.full_messages.first
      redirect_to event_path(@event)
    end
  end

  def update
    @event_user = EventUser.find(params[:id])
    authorize @event_user

    if params[:query] == "accepted"
      @event_user.status = "accepted"
      @event_user.save
    elsif params[:query] == "rejected"
      @event_user.status = "rejected"
      @event_user.save
    else
      @event_user.status = "applied"
      @event_user.save
    end
    respond_to do |format|
      format.html { redirect_to event_users_path }
      format.js
    end
  end

  private

  def strong_params
    params.require(:event_user).permit(:motivation)
  end
end
