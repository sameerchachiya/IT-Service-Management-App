class AddTstatusidToTickets < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :tstatus, foreign_key: true
  end
end
