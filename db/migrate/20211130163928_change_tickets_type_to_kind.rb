class ChangeTicketsTypeToKind < ActiveRecord::Migration[5.2]
  def change
    rename_column :tickets, :type, :kind
  end
end
