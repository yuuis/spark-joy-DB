# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  validates :smile_std, presence: true
  validates :birthday, presence: true
  validates :bunch_id, presence: true
  validates :product_team_id, presence: true
  validates :point, presence: true
  validates :role_id, presence: true
  validates :person_id, presence: true
  validates :join_date, presence: true

  belongs_to :role
  belongs_to :product_team
  belongs_to :bunch
end
