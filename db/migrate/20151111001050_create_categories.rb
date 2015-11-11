class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false, unique: true
      t.text :description
    end

    add_index :categories, :name
  end
end
