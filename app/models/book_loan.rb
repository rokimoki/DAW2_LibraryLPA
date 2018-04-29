class BookLoan < ApplicationRecord
  belongs_to :book_item
  belongs_to :person

  scope :getBookByBookLoanId, -> (bookLoanId) { BookLoan.find(bookLoanId).book_item.book }
  scope :getDaysLeftByBookLoanId, -> (bookLoanId) { BookLoan.find(bookLoanId) }
  scope :returnBookLoanByBookLoanId, -> (bookLoanId) { BookLoan.destroy(bookLoanId) }

  scope :gotIt, -> (bookId, userId) {
    myLoans = BookLoan.where('person_id = ?', userId)
    myLoans.each do |loan|
      if loan.book_item.book.id === bookId.to_i
        return 1
      end
    end
    return 0
  }

  scope :createBookLoan, -> (bookId, userId) {
    BookItem.where('book_id = ?', bookId).each do |bookItem|
      if bookItem.book_loans.count == 0
        BookLoan.create startDate: Time.now, endDate: (Time.now + 2.weeks), book_item_id: bookItem.id, person_id: userId
        break
      end
    end
  }
end
