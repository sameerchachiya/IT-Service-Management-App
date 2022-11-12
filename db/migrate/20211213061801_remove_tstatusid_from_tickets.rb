class RemoveTstatusidFromTickets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :tstatus_id, :integer
  end
end
