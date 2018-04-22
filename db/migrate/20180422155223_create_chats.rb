class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.references :creator
      t.references :receiver

      t.timestamps

      add_foreign_key :chats, :users, column: :creator_id, primary_key: :id
      add_foreign_key :chats, :users, column: :receiver_id, primary_key: :id
    end
  end
end
