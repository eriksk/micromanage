# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cost do
    name "MyString"
    description "MyText"
    value "9.99"
    frequency 1
    user_id 1
  end
end
