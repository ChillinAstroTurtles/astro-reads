# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.destroy_all
Author.destroy_all

fake_gender = %w(Male Female)

(0..5).each do |i|
  author = Author.create(first_name: Faker::Name.first_name,
                         last_name: Faker::Name.last_name,
                         birth_country: Faker::Address.country,
                         gender: fake_gender[i % 2],
                         website: Faker::Internet.url("goodreads.com"),
                         twitter_username: "@" + Faker::Lorem.word,
                         author_biography: Faker::Lorem.sentence)
  (0..7).each do
    author.books.create(name: Faker::Lorem.words(4).join(" "),
                        description: Faker::Lorem.sentence,
                        cover_image_url:
                          Faker::Internet.url("s3.amazon.com"))
  end
end
