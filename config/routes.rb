Rails.application.routes.draw do

  get 'books/getAllBooks', to: 'books#getAllBooks'
  get 'books/getTrendingBooks', to: 'books#getTrendingBooks'
  get 'books/getTopRatedBooks', to: 'books#getTopRatedBooks'
  get 'genres/getAllGenres', to: 'genres#getAllGenres'

  post 'books/searchBooks', to: 'books#searchBooks'
  post 'books/searchBooksByISBN', to: 'books#searchBooksByISBN'
  post 'books/getGenresOfBookByBookId', to: 'books#getGenresOfBookByBookId'
  post 'books/getAvailabilityByBookIdAndUserId', to: 'books#getAvailabilityByBookIdAndUserId'
  post 'books/getAllUsersWithLoanByBookId', to: 'books#getAllUsersWithLoanByBookId'

  post 'book_items/getBookByBookItemId', to: 'book_items#getBookByBookItemId'

  post 'book_loans/getBookByBookLoanId', to: 'book_loans#getBookByBookLoanId'
  post 'book_loans/getDaysLeftByBookLoanId', to: 'book_loans#getDaysLeftByBookLoanId'
  post 'book_loans/returnBookLoanByBookLoanId', to: 'book_loans#returnBookLoanByBookLoanId'
  post 'book_loans/createBookLoan', to: 'book_loans#createBookLoan'

  post 'people/log_in', to: 'people#login'
  post 'people/register', to: 'people#register'
  post 'people/getAllUserLoans', to: 'people#getAllUserLoans'
  post 'people/getBookLoansAndBookByUserId', to: 'people#getBookLoansAndBookByUserId'

  post 'chats/getChatWithUserId', to: 'chats#getChatWithUserId'

  root to: "pages#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
