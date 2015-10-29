require "rails_helper"

feature "User" do
  scenario "views the books index page" do
    book = create(:book)
    visit books_url
    expect(page).to have_content(book.name)
  end
end
