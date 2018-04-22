json.extract! book, :id, :isbn, :name, :author, :description, :rate, :publisher, :image, :created_at, :updated_at
json.url book_url(book, format: :json)
