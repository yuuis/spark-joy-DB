# frozen_string_literal: true

class CreateUserReflects < ActiveRecord::Migration[5.2]
  def change
    create_table :user_reflects do |t|
      t.integer :user_id, null: false
      t.integer :with, null: false
      t.timestamps
    end
  end
end
