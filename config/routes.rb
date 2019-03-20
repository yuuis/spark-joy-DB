# frozen_string_literal: true

Rails.application.routes.draw do
  scope :api do
    resources :pictures, only: %i[create]
    resources :events, only: %i[index]
    post 'aggregate' => 'events#aggregate'
    get 'aggregate/events/:event_id' => 'aggregates#events'
  end
end
