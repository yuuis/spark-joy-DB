# frozen_string_literal: true

class CreateProductTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :product_teams do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
