class Book < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations

  def self.has_category?(category)
    joins(:categories).where(
      categories: { name: category }
    )
  end
end
