FactoryGirl.define do
  factory :person do
    sequence(:email){|n| "person_#{n}@testing.com" }
    
    password "123123999"
    password_confirmation { "123123999" }
  end

end
