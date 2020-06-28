class GoalsController < ApplicationController
  def new
    @goal = Goal.new
    authorize @goal
  end

  def create
    @goal = Event.new(goal_params)
    authorize @goal
    @goal.user_id = current_user.id
    if @goal.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end
end
