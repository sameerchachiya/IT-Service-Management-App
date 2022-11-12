class RemoveDevidFromTicket < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :Dev_id, :integer
  end
end
