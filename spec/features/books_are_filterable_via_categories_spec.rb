require "rails_helper"

feature "Book" do
  describe "is filterable via categories" do
    scenario "is unfiltered" do
      category1 = create(:category, name: "Sci-Fi")
      category2 = create(:category, name: "Romance")
      book1     = create(:book,
                         name: "Ender's Game",
                         categories: [category1])
      book2     = create(:book,
                         name: "Elanor and Park",
                         categories: [category2])

      visit books_url

      expect(page).to have_content(category1.name)
      expect(page).to have_content(category2.name)
    end

    scenario "is filtered" do
      category1 = create(:category, name: "Sci-Fi")
      category2 = create(:category, name: "Romance")
      book1     = create(:book,
                         name: "Ender's Game",
                         categories: [category1])
      book2     = create(:book,
                         name: "Elanor and Park",
                         categories: [category2])

      visit books_url(category: category1.name)

      within("#books") do
        expect(page).to have_content(category1.name)
        expect(page).not_to have_content(category2.name)
      end
    end
  end
end
