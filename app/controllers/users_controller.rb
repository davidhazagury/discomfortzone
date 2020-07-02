class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def index
    if params[:query].present?
      @users = policy_scope(User)
      if User.all.map(&:first_name).include?(params[:query].capitalize)
        @users = User.where(first_name: params[:query].capitalize)
      else
        sql_query_users = "
            users.first_name ILIKE :query \
            OR users.last_name ILIKE :query \
            OR users.biography ILIKE :query \
            OR goals.name ILIKE :query \
            OR goals.description ILIKE :query \
            "
        @users = User.joins(:goals).where(sql_query_users, query: "%#{params[:query]}%")
      end
    else
      @users = policy_scope(User)
    end
  end

  def show
    @user = User.find(params[:id])
    @goals = @user.goals
    authorize @user
    @reviews = @user.received_reviews
  end
end
