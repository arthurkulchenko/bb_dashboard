# frozen_string_literal: true

class CreateOccupations < ActiveRecord::Migration[5.2]
  def change
    create_table :occupations do |t|
      t.belongs_to :employee, foreign_key: true
      t.string :reason, null: false
      t.datetime :from, null: false
      t.datetime :to, null: false

      t.timestamps
    end
  end
end
