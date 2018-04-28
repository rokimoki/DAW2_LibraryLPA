class Book < ApplicationRecord
  has_many :book_items
  has_many :comments
  has_and_belongs_to_many :genres

  scope :getGenresOfBookByBookId, -> (id) { Book.find(id).genres }
  scope :getTopRatedBooks, -> { Book.all.order("rate desc").limit(10) }
  scope :getTrendingBooks, -> { Book.all.order("created_at desc").limit(10) }
  scope :getBooksByISBN, -> (isbn) { Book.find_by_isbn(isbn) }

  scope :getBooksBySearchFilter, -> (name, author, publisher, genre) {
    if genre.blank?
      Book.where('name LIKE ?', "%#{name}%")
          .where('author LIKE ?', "%#{author}%")
          .where('publisher LIKE ?', "%#{publisher}%")
    else
      Genre.find_by('name LIKE ?', "%#{genre}%")
            .books
            .where('name LIKE ?', "%#{name}%")
            .where('author LIKE ?', "%#{author}%")
            .where('publisher LIKE ?', "%#{publisher}%")
    end
  }

  scope :getLoansCountByBookId, -> (bookId) {
    res = 0
    Book.find(bookId).book_items.each do | bookItem |
      res += bookItem.book_loans.count
    end
    return res
  }

  scope :getBookItemsCountByBookId, -> (bookId) {
    Book.find(bookId).book_items.count
  }

  scope :getAllUsersWithLoanByBookId, -> (bookId) {
    res = Array.new
    Book.find(bookId).book_items.each do | bookItem |
      bookItem.book_loans.each do | bookLoan |
        res.push Person.find(bookLoan.person_id)
      end
    end
    return res
  }

end
