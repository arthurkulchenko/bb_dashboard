class CreateOccupations < ActiveRecord::Migration[5.2]
  def change
    create_table :occupations do |t|
      t.belongs_to :employee, foreign_key: true
      t.string :kind
      t.datetime :from
      t.datetime :to

      t.timestamps
    end
  end
end
