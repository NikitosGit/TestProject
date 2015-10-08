class AddFieldsToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :avatar, :string
    add_column :admins, :image_passport, :string
  end
end
