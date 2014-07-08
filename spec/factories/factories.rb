FactoryGirl.define do
  factory :user do
    first_name 'John'
    last_name 'Doe'
    sequence(:email) { |i| "jd#{i}@example.com" }
    password "password123"
  end

  factory :post do
    user
    sequence(:title) { |i| "Family Update #{i}"}
    body "Hey everyone! Just wanted to send along an update for this event. Check out this picture!"
  end
end
