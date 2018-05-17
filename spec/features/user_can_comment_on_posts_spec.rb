# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Timeline', type: :feature do
  before do
    first_user
    fourth_user
  end
  scenario 'Can comment on a post' do
    visit '/'
    fill_in 'Email', with: 'spiderman@gmail.com'
    fill_in 'Password', with: 'spider123'
    click_button 'Log in'
    visit '/posts'
    fill_in 'comment[content]', with: 'my first comment!'
    click_button 'Comment'
    expect(page).to have_content('my first comment!')
  end
end
