class CreateJoinTableBooksAuthors < ActiveRecord::Migration
  create_join_table :books, :authors do |t|
    t.index :author_id
    t.index :book_id
  end
end
