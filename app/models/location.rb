class Location < ActiveRecord::Base

	has_many :books, :class_name => "Book", :foreign_key => "location_id"
	belongs_to :book
	
	validates_presence_of :name
	validates_presence_of :address
	validates_presence_of :city
	validates_presence_of :state
	validates_presence_of :zip

end
