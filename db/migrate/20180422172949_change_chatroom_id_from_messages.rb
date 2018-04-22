class ChangeChatroomIdFromMessages < ActiveRecord::Migration[5.1]
  def change
    rename_column :messages, :chatroom_id, :chat_room_id
  end
end
