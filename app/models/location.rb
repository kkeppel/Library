class Location < ActiveRecord::Base

	has_many :books, :class_name => "Book", :foreign_key => "location_id"
	belongs_to :book

end
