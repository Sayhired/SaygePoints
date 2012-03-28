FactoryGirl.define do
  factory :user do
    sequence(:email) { |i| "user_#{i}@example.com" }
    password "foobar"
    password_confirmation "foobar"
  end
end