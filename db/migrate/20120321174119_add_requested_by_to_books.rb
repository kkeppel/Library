class AddRequestedByToBooks < ActiveRecord::Migration
  def up
	add_column :books, :requested_by, :integer
  end
  
  def down
	remove_column :books, :requested_by
  end
end
