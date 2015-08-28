FactoryGirl.define do
  factory :person do
    sequence(:email){|n| "person_#{n}@testing.com" }
    
  end

end
