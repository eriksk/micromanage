# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email { Faker::Name.first_name }
    name { Faker::Name.last_name }
    password { Faker::Lorem.words(1).first.to_s }
    currency "SEK"
    salary { 17000 + (rand() * 2000).to_i }
    tax { 28 + (rand() * 30).to_i }
  end
end
