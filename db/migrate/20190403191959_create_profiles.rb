class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.belongs_to :employee, foreign_key: true
      t.string :position
      t.string :birthday
      t.string :contacts

      t.timestamps
    end
  end
end
