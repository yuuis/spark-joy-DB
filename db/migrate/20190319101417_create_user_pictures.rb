# frozen_string_literal: true

class CreateUserPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :user_pictures do |t|
      t.integer :user_id, null: false
      t.integer :picture_id, null: false
      t.float :smile_point, null: false
      t.timestamps
    end
  end
end
