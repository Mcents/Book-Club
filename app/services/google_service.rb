class GoogleService

	def initialize
		@conn ||=Faraday.new(url: "https://www.googleapis.com/books/v1/") do |faraday|
			faraday.adapter Faraday.default_adapter
		end
	end

	def isbn_info(isbn)
		parse(@conn.get("volumes?q=isbn#{isbn}&key=#{ENV['API_KEY']}"))
	end

	def parse(response)
		JSON.parse(response.body, symbolize_names: true)
	end

end
