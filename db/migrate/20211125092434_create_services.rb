class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :status
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
