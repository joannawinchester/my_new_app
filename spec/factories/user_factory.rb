FactoryGirl.define do

	sequence(:email) { |n| "user#{n}@example.com" }

	factory :user do
		email
		password "1234567890"
		first_name "Peter"
		last_name "Example"
		admin false
	end

	factory :user2, class: User do
		email
		password "qwertyuiop"
		first_name "Paul"
		last_name "Example"
		admin false
	end

end