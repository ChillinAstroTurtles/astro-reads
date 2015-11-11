class Book < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations

  scope :category, -> (category) { where category: category }
end
