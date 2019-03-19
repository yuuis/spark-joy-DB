# frozen_string_literal: true

class Picture < ApplicationRecord
  validates :event_id, presence: true
  validates :cameraman, presence: true

  belongs_to :event
  belongs_to :user, foreign_key: 'cameraman'
end
