class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :type
      t.string :description
      t.integer :dev_id
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end