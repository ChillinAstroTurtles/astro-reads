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

  sequence :name do |n|
    "name #{n}"
  end

  sequence :description do |n|
    "George R.R. Martin's #{n}th book"
  end

  factory :book do
    name
    description
  end
end
