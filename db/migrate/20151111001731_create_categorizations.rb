class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.references :book
      t.references :category
    end

    add_index :categorizations, :book_id
    add_index :categorizations, :category_id
  end
end
