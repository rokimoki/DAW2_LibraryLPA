class Book < ApplicationRecord
  has_many :book_items
  has_many :comments
  has_and_belongs_to_many :genres
end
