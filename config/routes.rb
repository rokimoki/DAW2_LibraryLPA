Rails.application.routes.draw do

  get 'books/getAllBooks', to: 'books#getAllBooks'
  get 'books/getTrendingBooks', to: 'books#getTrendingBooks'
  get 'books/getTopRatedBooks', to: 'books#getTopRatedBooks'
  get 'genres/getAllGenres', to: 'genres#getAllGenres'

  post 'books/searchBooks', to: 'books#searchBooks'
  post 'books/searchBooksByISBN', to: 'books#searchBooksByISBN'
  post 'books/getGenresOfBookByBookId', to: 'books#getGenresOfBookByBookId'
  post 'books/getBookLoanAvailabilityByBookId', to: 'books#getBookLoanAvailabilityByBookId'
  post 'books/getAllUsersWithLoanByBookId', to: 'books#getAllUsersWithLoanByBookId'

  post 'book_items/getBookByBookItemId', to: 'book_items#getBookByBookItemId'

  post 'people/log_in', to: 'people#login'
  post 'people/register', to: 'people#register'
  post 'people/getAllUserLoans', to: 'people#getAllUserLoans'


  root to: "pages#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
