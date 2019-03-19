# frozen_string_literal: true

class Picture < ApplicationRecord
  validates :event_id, presence: true
  validates :taken_by, presence: true

  belongs_to :event
  # belongs_to :user, foreign_key: 'taken_by'
  belongs_to :user, foreign_key: 'taken_by', optional: true
  has_many :user_pictures
  has_many :user, through: :user_pictures
end
