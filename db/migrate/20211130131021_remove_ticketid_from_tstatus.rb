class RemoveTicketidFromTstatus < ActiveRecord::Migration[5.2]
  def change
    remove_column :tstatuses, :ticket_id, :integer
  end
end
