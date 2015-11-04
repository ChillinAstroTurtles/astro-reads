# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

fake_gender = ["Male", "Female"]

(0..5).each do |i|
  author = Author.create(first_name: Faker::Name.first_name,
                         last_name: Faker::Name.last_name,
                         birth_country: Faker::Address.country,
                         gender: fake_gender[i % 2],
                         website: Faker::Internet.url("goodreads.com"),
                         twitter_username: "@" + Faker::Lorem.word,
                         author_biography: Faker::Lorem.sentence)
  (0..7).each do
    book = Book.create(name: Faker::Lorem.words(4).join(" "),
                       description: Faker::Lorem.sentence)
    book.book_authors.create(author_id: author.id)
  end
end
