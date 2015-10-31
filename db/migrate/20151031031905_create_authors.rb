class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :birth_country
      t.string :gender
      t.string :website
      t.string :twitter_username
      t.string :author_biography
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
