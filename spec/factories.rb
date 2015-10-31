FactoryGirl.define do

  factory :author do
    birth_country "United States"
    gender "Female"
    website "http://www.google.com/"
    twitter_username "@bpark0"
    author_biography "Someone was born"
    sequence(:first_name) { |n| "Firstname#{n}" }
    sequence(:last_name)  { |n| "Lastname#{n}" }
  end

end
