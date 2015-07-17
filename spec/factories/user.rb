FactoryGirl.define do
	
	factory :user do

		factory :valid_user do
			first_name "user"
			last_name "user"
			email { "#{first_name}@mail.com" }
			password "123456"
		end

		factory :user_witout_email do
			first_name "user"
			last_name "user"
			email nil
			password "123456"
		end

		factory :user_witout_password do
			first_name "user"
			last_name "user"
			email { "#{first_name}@mail.com" }
			password nil
		end

		factory :user_witout_first_name do
			first_name nil
			last_name "user"
			email { "#{first_name}@mail.com" }
			password "123456"
		end

		factory :user_witout_last_name do
			first_name "user"
			last_name nil
			email { "#{first_name}@mail.com" }
			password "123456"
		end
	end

end