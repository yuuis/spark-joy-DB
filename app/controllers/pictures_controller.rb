# frozen_string_literal: true

class PicturesController < ApplicationController
  def create
    @taken_by = User.find(params[:taken_by])
    @event = Event.find(params[:event_id])
    @picture = @event.pictures.build(taken_by: @taken_by.id)

    if @picture.save
      params[:people].each do |person|
        @user = User.where('person_id = ?', person[:person_id]).first
        @picture.user_pictures.build(smile_point: person[:smile_point], user_id: @user.id).save
      end
    end
    render json: { 'result': 'ok' }
  end
end
