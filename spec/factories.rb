FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Test User #{n}" } 
    sequence(:email) { |n| "testuser#{n}@example.com" }
    password "secret"
    password_confirmation "secret"
    admin false

    factory :admin do
      admin true
    end 
  end

  factory :property do
    sequence(:address) { |n| "300#{n} Gabriel View Drive" }
    price "500000.00"
    beds "4"
    baths "2.5"
    sqft "2500"
    description "Beautiful home located on of the premier streets in Georgetown, TX." 
  end
  
end

