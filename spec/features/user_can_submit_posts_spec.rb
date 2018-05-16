# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Timeline', type: :feature do
  before do
    visit '/users/sign_in'
    click_link 'Sign up'
    fill_in 'Username', with: 'BruceBatman'
    fill_in 'First name', with: 'Bruce'
    fill_in 'Surname', with: 'Wayne'
    fill_in 'Email', with: 'batman@gmail.com'
    fill_in 'Password', with: 'batman123'
    fill_in 'Password confirmation', with: 'batman123'
    click_button 'Sign up'
  end
  scenario 'Can submit posts and view them' do
    visit '/posts'
    click_link 'New post'
    fill_in 'Message', with: 'Hello, world!'
    click_button 'Submit'
    expect(page).to have_content('Hello, world!')
  end

  scenario 'Can post a message and see the date' do
    visit '/posts'
    click_link 'New post'
    fill_in 'Message', with: 'Hello, world!'
    click_button 'Submit'
    expect(page).to have_content(Time.now.strftime('%m/%d/%Y'))
  end
end
