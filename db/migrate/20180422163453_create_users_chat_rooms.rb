class CreateUsersChatRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :users_chat_rooms do |t|
      t.references :user, foreign_key: true
      t.references :chat_room, foreign_key: true
    end
  end
end
