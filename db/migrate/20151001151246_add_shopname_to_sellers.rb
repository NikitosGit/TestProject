class AddShopnameToSellers < ActiveRecord::Migration
  def change
  	add_column :sellers, :shop_name, :string
  end
end
