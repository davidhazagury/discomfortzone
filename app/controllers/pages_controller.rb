class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @events = policy_scope(Event)
    @last_events = @events.last(4)
  end

  def index
  end

  def crashed
  end
end
