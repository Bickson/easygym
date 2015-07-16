require "rails_helper"

describe User do
	
	let(:user) { User.new }

	context "Create a user" do
		it "is invalid" do
			expect(user).to_not be_valid
		end
	end

	context "Kill a user" do
		
	end
end