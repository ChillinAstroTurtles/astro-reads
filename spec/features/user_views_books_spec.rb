require "rails_helper"

feature "User" do
  scenario "views the books index page" do
    book = create(:book)
    visit books_url
    expect(page).to have_content(book.name)
  end

  scenario "sees they can but doesn't view additional records" do
    books = create_list(:book, 2)
 
    visit books_url

    expect(page).to have_content(books.first.name)
    expect(page).not_to have_content(books.last.name)
  end

  scenario "views a page of additional records" do
    books = create_list(:book, 2)

    visit books_url
    click_link "Load more"

    expect(page).not_to have_content(books.first.name)
    expect(page).to have_content(books.last.name)
  end
end
