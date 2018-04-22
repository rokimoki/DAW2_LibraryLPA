class AddUserToMessage < ActiveRecord::Migration[5.1]
  def change
    add_reference :messages, :user, index: true
    add_foreign_key :message, :users
  end
end
