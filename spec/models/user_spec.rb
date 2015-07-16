require "rails_helper"

describe User do
	
	let(:user) { FactoryGirl.create (:user) }

	context "Create a user" do
		it "is valid" do
			expect(user).to be_valid
		end
	end

	context "Kill a user" do
		
	end
end