FactoryGirl.define do  
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
