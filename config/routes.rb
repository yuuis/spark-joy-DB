# frozen_string_literal: true

Rails.application.routes.draw do
  scope :api do
    resources :pictures, only: %i[create]
    resources :events, only: %i[index]
    post 'aggregate' => 'events#aggregate'
    get 'aggregate/events/:event_id' => 'aggregates#events'
    get 'bunches/log/:user_id' => 'aggregates#bunches'
    get 'bunches/users/:bunch_id' => 'aggregates#users'
  end
end
