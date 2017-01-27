class AddLongitudeToMyApp < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :longitude, :string
  end
end
