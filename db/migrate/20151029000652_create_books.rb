class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, limit: 255, null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
