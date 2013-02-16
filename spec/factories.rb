FactoryGirl.define do
	factory :user do
		name     "John Manny"
		email    "john@manny.com"
		password "foobar"
		password_confirmation "foobar"
	end
	
end