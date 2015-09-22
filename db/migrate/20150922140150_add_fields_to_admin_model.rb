class AddFieldsToAdminModel < ActiveRecord::Migration
  def change
    add_column :admins, :firstname, :string
    add_column :admins, :secondname, :string
    add_column :admins, :image_passport, :string
    add_column :admins, :born_on, :string
  end
end
