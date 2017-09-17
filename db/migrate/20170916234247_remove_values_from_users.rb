class RemoveValuesFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :contact_method, :string
    remove_column :users, :handle, :string
  end
end
