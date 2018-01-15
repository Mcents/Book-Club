require 'rails_helper'

RSpec.feature "User can create a club" do
  scenario "when they are logged in" do
    
					user = User.create(username: "mike", first_name: "Mike", last_name: "jon")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit "clubs/new"
    fill_in "club[name]", with: "Mikes Awesome Club"
    fill_in "club[description]", with: "Wow this is nuts"
    click_button "Create Book Club"

    l_club = Club.last

    expect(current_path).to eq(book_path(l_book))
  end
end
