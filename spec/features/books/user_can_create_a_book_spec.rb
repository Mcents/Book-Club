require 'rails_helper'

RSpec.feature "User can create a book" do
	scenario "when they are loggin in and belong to a club" do

		user = User.create(username: "mike", first_name: "Giy", last_name: "Thing")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

		visit "books/new"
		fill_in "book[title]", with: "Gravitys Rainbow"
		fill_in "book[author]", with: "Thomas Pynchon"
		fill_in "book[description]", with: "This is a worldie of a book"
		fill_in "book[isbn]", with: "978"

		l_book = Book.last

		expect(current_path).to eq(book_path(l_book))
		expect(page).to have_content("Gravitys Rainbow")

	


