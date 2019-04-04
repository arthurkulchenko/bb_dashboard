class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :full_name
      t.belongs_to :department, foreign_key: true

      t.timestamps
    end
  end
end
