# frozen_string_literal: true

class UserPicture < ApplicationRecord
  validates :user_id, presence: true
  validates :picture_id, presence: true
  validates :smile_point, presence: true

  belongs_to :user
  belongs_to :picture
end
