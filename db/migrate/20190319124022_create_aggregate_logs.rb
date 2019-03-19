# frozen_string_literal: true

class CreateAggregateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :aggregate_logs do |t|
      t.integer :user_id, null: false
      t.integer :event_id, null: false
      t.float :laugh_stg, null: false
      t.integer :rare_encount_point, null: false
      t.integer :taken_picture_with_many_people_point, null: false
      t.integer :take_good_picture_point, null: false
      t.integer :between_product_interact_point, null: false
      t.integer :divercity_point, null: false
      t.integer :score
      t.timestamps
    end
  end
end
