require 'rails_helper'
require 'helpers/users_helper_spec'

RSpec.feature 'Timeline', type: :feature do
  before do
    first_user
    fourth_user
  end
  scenario 'User can make a post on another users profile page' do
    first_user_sign_in
    click_link 'Users'
    click_link 'PeterParker'
    click_link 'Post on wall'
    fill_in 'Message', with: 'Hi, this is a test to see whether wall posts are working'
    click_button 'Submit'
    expect(page).to have_content('Hi, this is a test to see whether wall posts are working')
  end
end
