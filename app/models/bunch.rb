# frozen_string_literal: true

class Bunch < ApplicationRecord
  validates :leader, presence: true

  belongs_to :user, foreign_key: 'leader', optional: true
  has_many :user, dependent: :restrict_with_error
end
