require 'rails_helper'

describe AmazonService do
	context "#isbn_info" do
		it "retrieves book info" do

			b_info = AmazonService.new.isbn_info(9780143039945)

			expect(b_info.class).to eq(Hash)
			
		end
	end
end
