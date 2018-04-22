class CreateBookLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :book_loans do |t|
      t.datetime :startDate
      t.datetime :endDate
      t.references :bookitem, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
