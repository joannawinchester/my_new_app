FactoryGirl.define do

sequence(:name) { |n| "test product #{n}" }

	factory :product do
		name
		description "testing testing 123"
		image_url "knitting.png"
		price "35 per hour"
		subtitle "test..."
		note "batteries not included"
	end
	
end