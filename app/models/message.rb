class Message < ApplicationRecord
  belongs_to :chat_room, optional:true
  belongs_to :chat, optional:true
end
