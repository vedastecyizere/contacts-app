class AddLastNameToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :last_name, :string
  end
end
