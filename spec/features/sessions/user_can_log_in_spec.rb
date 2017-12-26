require 'rails_helper'

RSpec.feature "A user can log into their account" do
  scenario "and be redirected to the root" do

    user = User.create(username: "mcents", password: "thepassword")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit login_path

    fill_in "session[username]", with: "mcents"
    fill_in "session[password]", with: "thepassword"
    click_on "Login"

    expect(page).to have_content("Book Club")

  end
end
