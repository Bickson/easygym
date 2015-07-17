require 'rails_helper'

feature 'signing up' do 

	let(:user) {FactoryGirl.build(:valid_user)}

	def fill_in_signup_fields
		fill_in 'user[first_name]', with: user.first_name
		fill_in 'user[last_name]', with: user.last_name
		fill_in 'user[email]', with: user.email
		fill_in 'user[password]', with: user.password
		fill_in 'user[password_confirmation]', with: user.password
		click_button('Sign up')
	end

	scenario 'visiting the site to sign up' do
		visit root_path
		click_link "Sign up"
		fill_in_signup_fields
		expect(page).to have_content("Welcome! You have signed up successfully.")
		#expect(page).to have_content("#{user.first_name} #{user.last_name}")
	end

end