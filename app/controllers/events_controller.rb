# frozen_string_literal: true

class EventsController < ApplicationController
  def aggregate
    @points
    @event = Event.find(params[:event_id])
    User.all.each do |user|
      @points = @event.aggregate_user(user.id)
    end
  end

  def index
    @events = Event.all
    render json: @events, except:[:created_at, :updated_at]
  end
end
