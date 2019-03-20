# frozen_string_literal: true

class EventsController < ApplicationController
  def index
    @events = Event.all
    render 'events', formats: 'json', handlers: 'jbuilder'
  end
end
