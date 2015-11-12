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

  factory :book do
    sequence(:name) { |n| "Name#{n}" }
    sequence(:description) { |n| "Description#{n}" }

    trait :book_with_category do
      after(:create) do |book|
        book.categories << create(:category)
      end
    end
  end

  factory :category do
    name "Sci-Fi"
    description "Science fiction, or 'Sci-Fi', is NOT fantasy."
  end
end
