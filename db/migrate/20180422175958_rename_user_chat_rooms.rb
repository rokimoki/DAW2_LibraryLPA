class RenameUserChatRooms < ActiveRecord::Migration[5.1]
  def self.up
    rename_table :users_chat_rooms, :chat_rooms_users
  end

  def self.down
    rename_table :chat_rooms_users, :users_chat_rooms
  end
end