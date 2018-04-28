class ChangeUserIdOnBookLoansToPersonId < ActiveRecord::Migration[5.1]
  def change
    rename_column :book_loans, :user_id, :person_id
  end
end
