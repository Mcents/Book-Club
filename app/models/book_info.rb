class BookInfo 

	def initialize(book_atts={})
		@title = book_atts[:volumeInfo][:title]
		@author = book_atts[:volumeInfo][:authors]
		@description = book_atts[:volumeInfo][:description]
		binding.pry
	end

	def self.b_info(isbn)
		GoogleService.new.isbn_info(isbn)[:items].map do |b|
			BookInfo.new(b)
		end
	end
end
