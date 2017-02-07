class AddLatitude < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :lattitude, :float
  end
end
