class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
	t.string :shop_name
     	t.string :email
     	t.string :password

      t.timestamps
    end
  end
end
