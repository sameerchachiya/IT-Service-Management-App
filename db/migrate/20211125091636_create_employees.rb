class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :phone
      t.references :designation, foreign_key: true

      t.timestamps
    end
  end
end
