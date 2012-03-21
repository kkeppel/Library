class ChangeIsbnBooks < ActiveRecord::Migration
  def up
	rename_column :books, :isbn, :isbn10
	add_column :books, :isbn13, :string
  end

  def down
	rename_column :books, :isbn10, :isbn
	remove_column :books, :isbn13
  end
end
