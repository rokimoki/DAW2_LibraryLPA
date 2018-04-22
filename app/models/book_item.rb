class BookItem < ApplicationRecord
  belongs_to :book
  has_many :book_loans
end
