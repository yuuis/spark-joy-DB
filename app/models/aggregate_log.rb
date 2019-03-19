# frozen_string_literal: true

class AggregateLog < ApplicationRecord
  validates :user_id, presence: true
  validates :event_id, presence: true
  validates :laugh_stg, presence: true
  validates :rare_encount_point, presence: true
  validates :taken_picture_with_many_people_point, presence: true
  validates :take_good_picture_point, presence: true
  validates :between_product_interact_point, presence: true
  validates :divercity_point, presence: true
  validates :score

  belongs_to :user
  belongs_to :event
end
