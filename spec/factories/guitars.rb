# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :guitar do
    model "MyString"
    make "MyString"
    price "9.99"
  end
end
