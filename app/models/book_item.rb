class BookItem < ApplicationRecord
  belongs_to :book
  has_many :book_loans

  scope :getBookByBookItemId, -> (bookItemId) { BookItem.find(bookItemId).book }
end
