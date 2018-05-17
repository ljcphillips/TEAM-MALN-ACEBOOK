# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Timeline', type: :feature do
  before do
    visit '/users/sign_in'
    click_link 'Sign up'
    fill_in 'Email', with: 'tansaku@gmail.com'
    fill_in 'Password', with: '12345678m'
    fill_in 'Password confirmation', with: '12345678m'
    click_button 'Sign up'
    click_link 'New post'
    fill_in 'post_message', with: 'my first post'
    click_button 'Submit'
  end

  scenario "Can click 'like' " do
    visit '/posts'
    click_link 'like'
    expect(page).to have_content('Likes: 1')
  end

  scenario "Can click 'unlike' " do
    visit '/posts'
    click_link 'unlike'
    expect(page).to have_content('Likes: 0')
  end

  # scenario "Can see 'likes' by posts that have been liked" do
  #   visit '/posts'
  #   click_link 'New post'
  #   fill_in 'Message', with: 'Hello, world!'
  #   click_button 'Submit'
  #   expect(page).to have_content(Time.now.strftime('%m/%d/%Y'))
  # end
end
