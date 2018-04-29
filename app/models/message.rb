class Message < ApplicationRecord
  belongs_to :chat_room, optional:true
  belongs_to :chat, optional:true

  scope :getAllMessagesByChatId, -> (chatId) { Message.where('chat_id = ?', chatId).order('created_at asc').limit(50) }
end
