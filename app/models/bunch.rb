# frozen_string_literal: true

class Bunch < ApplicationRecord
  validates :leader, presence: true

  has_many :user, dependent: :restrict_with_error
  belongs_to :user, foreign_key: 'leader'
end
