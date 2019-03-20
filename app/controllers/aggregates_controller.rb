# frozen_string_literal: true

class AggregatesController < ApplicationController
  before_action :set_user, only: %i[events bunches]

  def events
    @event = Event.find(params[:event_id])
    @agglegate_log = AggregateLog.where(user_id: @user.id).where(event_id: @event.id).first
    scores = @user.bunch.users.map do |user|
      AggregateLog.where(user_id: user.id).where(event_id: @event.id).first.score
    end
    @bunch_avg = scores.inject(:+) / scores.length

    render 'events', formats: 'json', handlers: 'jbuilder'
  end

  def bunches
    @user_bunch_users = @user.bunch.users

    # bunch_score_sum
    @bunch_score_sum = 0
    @user_bunch_users.each do |user|
      AggregateLog.where(user_id: user.id).each do |log|
        @bunch_score_sum += log.score
      end
    end

    # user_score_sum
    @user_score_sum = @user.aggregate_logs.map(&:score).inject(:+)

    events = Event.all

    # bunch_scores
    sum = {}
    events.each do |event|
      @user_bunch_users.each do |user|
        AggregateLog.where(user_id: user.id).where(event_id: event.id).each do |log|
          if sum.key?(event.id)
            sum[event.id] += log.score
          else
            sum[event.id] = log.score
          end
        end
      end
    end
    @bunch_scores = sum.map { |sm| { 'date' => Event.find(sm[0]).date.strftime('%Y-%m'), 'score' => sm[1] } }

    # user_scores
    sum = {}
    events.each do |event|
      AggregateLog.where(user_id: @user.id).where(event_id: event.id).each do |log|
        sum[event.id] = log.score
      end
    end
    @user_scores = sum.map { |sm| { 'date' => Event.find(sm[0]).date.strftime('%Y-%m'), 'score' => sm[1] } }

    render 'bunches', formats: 'json', handlers: 'jbuilder'
  end

  def users
    @bunch = Bunch.find(params[:bunch_id])
    @users = @bunch.users

    render 'users', formats: 'json', handlers: 'jbuilder'
  end

  def aggregate
    @event = Event.find(params[:event_id])
    @points = User.all.map { |user| @event.aggregate_user(user.id) }
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end
end
