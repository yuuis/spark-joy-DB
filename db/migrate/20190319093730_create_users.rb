# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.float :smile_std, null: false
      t.integer :bunch_id, null: false
      t.integer :product_team_id, null: false
      t.integer :point, null: false, default: 0
      t.integer :role_id, null: false
      t.date :birthday, null: false
      t.date :join_date, null: false
      t.timestamps
    end
  end
end
