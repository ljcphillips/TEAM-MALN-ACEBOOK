require 'rails_helper'
require 'helpers/users_helper_spec'

RSpec.feature 'Timeline', type: :feature do

  before do
    first_user
    second_user
    third_user
    first_user_sign_in
  end

  scenario 'User can go to Users page and see all users' do
    expect(page).to have_selector(:link_or_button, 'BruceBatman')
    expect(page).to have_selector(:link_or_button, 'ClarkKent')
    expect(page).to have_selector(:link_or_button, 'DianaPrince')
  end

  scenario 'User can go to Users page and choose one profile to see' do
    click_link 'BruceBatman'
    expect(page).to have_content('Welcome to BruceBatman profile page')
    expect(page).to have_content('I\'m Batman!!!')
  end


end
