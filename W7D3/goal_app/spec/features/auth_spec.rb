require 'spec_helper'
require 'rails_helper'

feature 'the signup process', type: :feature do
  background :each do 
    visit new_user_url 
  end

  scenario 'has a new user page' do 
    expect(page).to have_content("New User")
  end

  feature 'signing up a user' do

    scenario 'shows username on the homepage after signup' do 
      fill_in 'Username', with: 'testing_username'
      fill_in 'Password', with: 'testing_password'
      click_on 'Sign Up'
      expect(page).to have_content 'testing_username'
    end

  end
end

feature 'logging in' do
  scenario 'shows username on the homepage after login' do 
    let!(:user) {User.create('testing_username', 'testing_password')}
    visit new_session_url 
    fill_in 'Username', with: 'testing_username'
    fill_in 'Password', with: 'testing_password'
    click_on 'Sign In'

    expect(page).to have_content 'testing_username'
  end

end

feature 'logging out' do
  scenario 'begins with a logged out state' do 

  end

  scenario 'doesn\'t show username on the homepage after logout' do 

  end

end