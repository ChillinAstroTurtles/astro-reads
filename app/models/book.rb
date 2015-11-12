class Book < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations

  scope :category, -> (category) {
    includes(:categories).where(categories: {
      name: category })
  }
end
