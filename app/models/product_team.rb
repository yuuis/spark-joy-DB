# frozen_string_literal: true

class ProductTeam < ApplicationRecord
  validates :name, presence: true

  has_many :users, dependent: :restrict_with_error
end
