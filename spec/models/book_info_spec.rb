require 'rails_helper'

describe 'book information' do
	it 'returns all book information' do

		b_info = BookInfo.b_info(9780143039945)
		first = b_info.first

		expect(first).to respond_to(:volumeInfo)
	end
end

