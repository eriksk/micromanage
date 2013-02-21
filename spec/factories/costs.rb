# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cost do
    name { Faker::Lorem.words(1).first.to_s }
    description { Faker::Lorem.words(20).join(" ").to_s }
    value { (rand() * 1000).to_i }
    frequency { 1 + (rand() * 3).to_i }
		user_id { FactoryGirl.create(:user).id }
  end
end
