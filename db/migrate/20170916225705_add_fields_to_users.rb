class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :phone, :string
    add_column :users, :contact_method, :string
    add_column :users, :handle, :string
  end
end
