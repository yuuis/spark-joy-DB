# frozen_string_literal: true

class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.integer :event_id, null: false
      t.integer :cameraman, null: false
      t.timestamps
    end
  end
end
