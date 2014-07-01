require 'rails_helper'
require 'capybara/rails'

feature 'Auth' do

  scenario 'Users can login and out' do
    User.create!(email: 'user@example.com', password: 'password', password_confirmation: 'password')

    visit root_path
    click_on "Login"
    expect(page).to have_content("Username / password is invalid")

    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"
    expect(page).to have_content("Your Wall")
  end

end
