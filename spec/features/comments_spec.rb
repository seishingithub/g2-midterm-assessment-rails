require 'rails_helper'

feature 'Manage Comments' do
  scenario 'user can create and view Comments' do
    user = create_user email: 'user@example.com'
    Post.create!(body: 'text', user_id: user.id)

    visit root_path
    click_on 'Login'
    expect(page).to have_content('Username / password is invalid')

    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    click_on 'Login'

    click_on 'Add Comment'
    fill_in 'comment[body]', with: 'I can\t get past :post_id => nil error message'
    click_on 'Add Comment'
    expect(page).to have_content 'Your Wall'
    comment = Comment.last
    expect(page).to have_content 'I can\t get past :post_id => nil error message'
    expect(page).to have_content 'Some User Comments!'
    expect(page).to have_content "#{time_ago_in_words(comment.created_at)} ago"
  end
end
