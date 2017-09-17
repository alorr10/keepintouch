class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.string :contact_method
      t.string :handle
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
