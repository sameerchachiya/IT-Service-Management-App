class CreateTstatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :tstatuses do |t|
      t.string :status
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end
