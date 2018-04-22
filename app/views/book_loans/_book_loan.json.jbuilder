json.extract! book_loan, :id, :startDate, :endDate, :book_item_id, :user_id, :created_at, :updated_at
json.url book_loan_url(book_loan, format: :json)
