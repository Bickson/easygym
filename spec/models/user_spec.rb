require "rails_helper"

describe User do

	context "Create a user" do
		
		it "is valid" do
			user = build(:valid_user)			
			expect(user).to be_valid
		end

		it 'has not email' do
			user = build(:user_witout_email)
			expect(user).to_not be_valid
		end

		it 'has not password' do
			user = build(:user_witout_password)
			expect(user).to_not be_valid
		end

		it 'has not first name' do
			user = build(:user_witout_first_name)
			expect(user).to_not be_valid
		end

		it 'has not last name' do
			user = build(:user_witout_last_name)
			expect(user).to_not be_valid
		end

		it 'email has already been taken' do
			user_valid = create(:valid_user)
			user_same_email = build(:valid_user)
			user_same_email.valid?
			expect(user_same_email.errors.messages[:email]).to include("has already been taken")
		end
	end

end