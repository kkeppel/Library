class AddRequestedCount < ActiveRecord::Migration
  def up
	add_column :books, :requested_count, :integer, :default => 0
  end

  def down
	remove_column :books, :requested_count
  end
end
