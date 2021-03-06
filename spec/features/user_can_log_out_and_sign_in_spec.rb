require 'rails_helper'
require 'helpers/users_helper_spec'

RSpec.feature 'Timeline', type: :feature do

  before do
    first_user
    first_user_sign_in
  end

  scenario 'User can log out' do
    click_link 'Log Out'
    expect(page).to have_content('Log in')
  end

  scenario 'User can log in' do
    expect(page).to have_content('Hello BruceBatman. You are now signed in!')
  end
end
