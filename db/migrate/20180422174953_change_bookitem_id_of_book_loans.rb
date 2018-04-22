class ChangeBookitemIdOfBookLoans < ActiveRecord::Migration[5.1]
  def change
    rename_column :book_loans, :bookitem_id, :book_item_id
  end
end
