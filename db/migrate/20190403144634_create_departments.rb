class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :city
      t.string :seo

      t.timestamps
    end
  end
end
