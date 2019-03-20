# frozen_string_literal: true

class AggregatesController < ApplicationController
  def events
    @event = Event.find(params[:event_id])
    @user = User.find(params[:user_id])
    @agglegate_log = AggregateLog.where(user_id: @user.id).where(event_id: @event.id).first
    scores = @user.bunch.users.map do |user|
      AggregateLog.where(user_id: user.id).where(event_id: @event.id).first.score
    end
    @bunch_avg = scores.inject(:+) / scores.length

    render 'events', formats: 'json', handlers: 'jbuilder'
  end
end
