require 'rails_helper'

RSpec.feature "User can create a book" do
	scenario "when they are loggin in and belong to a club" do

		user = User.create(username: "mike", first_name: "Giy", last_name: "Thing")
		club = Club.create(name: "club1", description: "wow")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

		visit new_club_book_path(club)
		fill_in "book[title]", with: "Gravitys Rainbow"
		fill_in "book[author]", with: "Thomas Pynchon"
		fill_in "book[description]", with: "This is a worldie of a book"
		fill_in "book[isbn]", with: "978"
		save_and_open_page

		click_button "Create Book"

		l_book = Book.last

		expect(current_path).to eq("/clubs/#{club.id}/books/#{Book.last.id}")
		expect(page).to have_content("Gravitys Rainbow")
	end
end

	


