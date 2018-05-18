# frozen_string_literal: true

require 'rails_helper'
require 'helpers/users_helper_spec'

RSpec.feature 'Timeline', type: :feature do

  before do
    first_user
    second_user
    third_user
    first_user_sign_in
  end

  scenario 'Can navigate to profile page' do
    click_link 'My Profile'
    expect(page).to have_content('Welcome to BruceBatman profile page')
  end

  scenario 'Can only see their own posts on their profile page' do
    click_link 'My Profile'
    expect(page).not_to have_content('Superman to the rescue!!!')
  end

  scenario 'User can click on the user who created post and be redirected to his profile' do
    click_link 'BruceBatman'
    expect(page).to have_content('Welcome to BruceBatman profile page')
    expect(page).to have_content('I\'m Batman!!!')
  end
end
