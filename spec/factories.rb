FactoryGirl.define do  
  factory :author do
    birth_country "United States"
    gender "Female"
    website "http://www.google.com/"
    twitter_username "@WomenWriters"
    author_biography "Some biography"
    sequence(:first_name) { |n| "Firstname#{n}" }
    sequence(:last_name) { |n| "Lastname#{n}" }
  end
end
