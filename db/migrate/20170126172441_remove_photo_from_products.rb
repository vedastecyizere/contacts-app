class RemovePhotoFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :photo, :string
  end
end
