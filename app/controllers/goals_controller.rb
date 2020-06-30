class GoalsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @goal = Goal.new
    authorize @goal
  end

  def create
    @goal = Goal.new(goal_params)
    @user = User.find(params[:user_id])
    authorize @goal
    @goal.user_id = current_user.id
    if @goal.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def update
    @goal = Goal.find(params[:id]) # this may not work, need to check
    @user = User.find(params[:user_id])
    authorize @goal

    if @goal.completed
      @goal.completed = false
    else
      @goal.completed = true
    end
    @goal.save
    redirect_to user_path(@user), anchor: "bucket-list-top"
    # write code here in order to be able to switch "completed" from true to false, or false to true
    # The logic should look something like this:
    # if completed == false, turn it true, else turn it false, end, save.
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
    authorize @event
    redirect_to events_path
  end

  private

  def goal_params
    params.require(:goal).permit(:name, :description)
  end
end
