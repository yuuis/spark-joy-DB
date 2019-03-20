class UserReflect < ApplicationRecord
  validates :user_id, presence: true
  validates :with, presence: true

  belongs_to :user
  belongs_to :user, foreign_key: 'with'
end
