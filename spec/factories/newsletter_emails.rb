FactoryGirl.define do
  factory :newsletter_email do
    email { Faker::Internet.email }
		product "V22"
  end

end
