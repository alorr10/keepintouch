class AddLastCOntactedOnToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :last_contacted_on, :datetime
  end
end
