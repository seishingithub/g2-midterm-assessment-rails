require 'rails_helper'
require 'capybara/rails'

feature 'Manage Comments' do
  scenario 'user can create and view Comments' do
    create_user email: 'user@example.com'

    visit root_path
    click_on 'Login'
    expect(page).to have_content('Username / password is invalid')

    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    click_on 'Login'
    expect(page).to have_content 'Your Wall'

    click_on 'Add Comment'
    fill_in 'Comment', with: 'I can\'t get past :post_id => nil error message'
    click_on 'Add Comment'
    expect(page).to have_content 'Your Wall'
    expect(page).to have_content 'I can\'t get past :post_id => nil error message'
  end
end