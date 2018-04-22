Rails.application.routes.draw do
  devise_for :users, path:'', path_names:{ sign_in:'login', sign_out:'logout', sign_up:'register' }
  root to: "pages#index"

  resources :messages
  resources :chat_rooms
  resources :chats
  resources :geolocations
  resources :book_loans
  resources :comments
  resources :genres
  resources :book_items
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
