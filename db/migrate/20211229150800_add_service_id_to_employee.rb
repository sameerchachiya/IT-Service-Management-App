class AddServiceIdToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :sid 
  end
end
