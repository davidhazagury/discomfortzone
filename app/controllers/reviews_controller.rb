class ReviewsController < ApplicationController
  before_action :set_event, only: [:new, :create]
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.event = @event
    authorize @review
    if @review.save
      redirect_to user_path(@event.user)
    else
      render :new
    end
  end

  def index
    @reviews = policy_scope(Event)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
end
