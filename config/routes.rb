# frozen_string_literal: true

Rails.application.routes.draw do
  scope :api do
    resources :pictures, only: %i[create]
    post 'aggregate' => 'events#aggregate'
  end
end
