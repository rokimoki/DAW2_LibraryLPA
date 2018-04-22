class CreateBookItems < ActiveRecord::Migration[5.1]
  def change
    create_table :book_items do |t|
      t.string :referenceCode
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
