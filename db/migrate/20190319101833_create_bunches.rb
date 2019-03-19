# frozen_string_literal: true

class CreateBunches < ActiveRecord::Migration[5.2]
  def change
    create_table :bunches do |t|
      t.integer :leader, null: false
      t.timestamps
    end
  end
end
