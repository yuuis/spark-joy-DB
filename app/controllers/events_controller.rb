class EventsController < ApplicationController
  def aggregate
    @points
    @event = Event.find(params[:event_id])
    User.all.each do |user|
      @points = @event.aggregate_user(user.id) # [...]を返す
    end
  end

  def index
    @events = Event.all
    render json: @event
  end
end
