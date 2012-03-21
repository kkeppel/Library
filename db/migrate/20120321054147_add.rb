class Add < ActiveRecord::Migration
  def up
	add_column :books, :location_id, :integer
  end

  def down
	remove_column :books, :location_id
  end
end
