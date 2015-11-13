require "rails_helper"

RSpec.feature "Users" do
  describe "can filter books on the index page by category" do
    scenario "by clicking the select input on the books index page" do
      category1 = create(:category, name: "Sci-Fi")
      category2 = create(:category, name: "Romance")
      book1     = create(:book,
                         name: "Ender's Game",
                         categories: [category1])
      book2     = create(:book,
                         name: "Elanor and Park",
                         categories: [category2])

      visit books_url
      select "Sci-Fi", from: "category"
      click_button "Filter"

      expect(page).to have_content(book1.name)
      expect(page).not_to have_content(book2.name)
    end
  end
end
