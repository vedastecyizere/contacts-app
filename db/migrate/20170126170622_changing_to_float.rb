class ChangingToFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :contacts, :longitude, :float
    change_column :contacts, :latitude, :float
  end
end

