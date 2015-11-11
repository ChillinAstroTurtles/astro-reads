require "rails_helper"

feature "Book" do
  describe "is filterable via categories" do
    scenario "is unfiltered" do
      category1 = create(:category, name: "Sci-Fi")
      category2 = create(:category, name: "Romance")
      book      = create(:book, categories: [category1])

      visit books_url

      expect(page).to have_content(category1.name)
      expect(page).to have_content(category2.name)
    end

    scenario "is filtered" do
      category1 = create(:category, name: "Sci-Fi")
      category2 = create(:category, name: "Romance")
      book      = create(:book, categories: [category1])

      visit books_url(:category => { :category_id => category1.id })

      expect(page).to have_content(category1.name)
      expect(page).not_to have_content(category2.name)
    end
  end
end
