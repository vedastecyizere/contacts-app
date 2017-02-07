class CreateGroupProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :group_products do |t|
      t.integer :contact_id
      t.integer :group_id

      t.timestamps
    end
  end
end
