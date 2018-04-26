Rails.application.routes.draw do

  get 'books/getAllBooks', to: 'books#getAllBooks'

  root to: "pages#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
