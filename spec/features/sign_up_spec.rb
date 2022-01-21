# frozen_string_literal: true

require 'spec_helper'

feature 'Sign up user' do
  scenario 'The user signs up and gets redirected to the welcome page' do
    visit '/'
    fill_in 'uname', with: 'foo'
    fill_in 'mail', with: 'foo@bar.com'
    fill_in 'psw', with: 'foobar'
    click_button 'SIGN UP'
    expect(page).to have_content 'Welcome to the site!'
  end
end
