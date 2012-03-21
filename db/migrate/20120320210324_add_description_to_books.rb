class AddDescriptionToBooks < ActiveRecord::Migration
  def up
	add_column :books, :description, :text
  end
  
  def down
	remove_column :books, :description
  end
end
