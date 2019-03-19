# frozen_string_literal: true

class Event < ApplicationRecord
  validates :name, presence: true

  has_many :pictures, dependent: :restrict_with_error
end
