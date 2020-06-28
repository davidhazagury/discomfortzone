class GoalsController < ApplicationController
  def new
    @goal = Goal.new
    authorize @goal
  end

  def create
    @goal = Goal.new(goal_params)
    authorize @goal
    @goal.user_id = current_user.id
    if @goal.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def update
    @goal = EventUser.find(params[:id])
    authorize @event_user

    # write code here in order to be able to switch "completed" from true to false, or false to true
    # The logic should look something like this:
    # if completed == false, turn it true, else turn it false, end, save.

  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    authorize @event
    redirect_to events_path
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :description)
  end
end
