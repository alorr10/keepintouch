class AddContactTimeToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :time_between_contact, :integer, default: 7
  end
end
