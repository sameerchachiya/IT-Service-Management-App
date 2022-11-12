class AddEmployeeidToTickets < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :employee, foreign_key: true
  end
end
