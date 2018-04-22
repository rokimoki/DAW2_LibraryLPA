class CreateBooksGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :books_genres do |t|
      t.references :book, foreign_key: true
      t.references :genre, foreign_key: true
    end
  end
end
