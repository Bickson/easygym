FactoryGirl.define do
	
	factory :user do
		first_name "user"
		last_name "user"
		email { "#{first_name}@mail.com" }
		password "123456"
	end

end