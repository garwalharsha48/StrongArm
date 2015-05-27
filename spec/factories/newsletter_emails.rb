FactoryGirl.define do
  factory :newsletter_email do
    email { Faker::Internet.email }
		first_name { Faker::Name.first_name }
  end

end
