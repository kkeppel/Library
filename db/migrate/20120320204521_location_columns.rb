class LocationColumns < ActiveRecord::Migration
  def up
  
  	add_column :locations, :name, :string
	add_column :locations, :address, :string
	add_column :locations, :address_2, :string
	add_column :locations, :city, :string
	add_column :locations, :state, :string
	add_column :locations, :zip, :string
	add_column :locations, :phone, :string
  end

  def down
	remove_column :locations, :name
	remove_column :locations, :address
	remove_column :locations, :address_2
	remove_column :locations, :city
	remove_column :locations, :state
	remove_column :locations, :zip
	remove_column :locations, :phone
  end

end
