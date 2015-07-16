#require 'spec_helper'
require "rails_helper"

describe 'home' do
	
	it "start application" do
		visit '/'
		expect(page).to have_content 'easy'
	end

end