class RemoveFieldsFromAdmin < ActiveRecord::Migration
  def change
  	remove_column :admins, :email
  	remove_column :admins, :password
  end
end
