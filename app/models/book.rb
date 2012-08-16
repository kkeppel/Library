class Book < ActiveRecord::Base
	
	has_many :locations, :class_name => "Location"
	belongs_to :location
	
	validates_presence_of :title
	validates_presence_of :author
	validates_presence_of :isbn10
	validates_presence_of :isbn13
	
	def self.update_by_sql(sql)
        connection.update(sql)
    end
	
	def self.search(search)
	
		if search
			find_by_sql("SELECT * FROM books WHERE title LIKE '%#{search}%' or isbn10 LIKE '%#{search}%' or isbn13 like '%#{search}%'")
		else
			find(:all)
		end
	end
	
end
