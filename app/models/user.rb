# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  validates :birthday, presence: true
  validates :product_team_id, presence: true
  validates :point, presence: true
  validates :role_id, presence: true
  validates :join_date, presence: true

  belongs_to :role
  belongs_to :product_team
  belongs_to :bunch, optional: true
  has_many :user_pictures
  has_many :pictures, through: :user_pictures
  has_many :aggregate_logs
end
