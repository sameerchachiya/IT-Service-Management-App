class AddServiceidToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :service, foreign_key: true
  end
end
