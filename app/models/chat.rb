class Chat < ApplicationRecord
  belongs_to :creator, :class_name => 'Person'
  belongs_to :receiver, :class_name => 'Person'

  has_many :messages

  scope :getChatWithUserId, -> (creatorId, receiverId) {
    res = {}
    res["messages"] = []
    currentChat = Chat.where('(creator_id = ? or receiver_id = ?) and (creator_id = ? or receiver_id = ?)', creatorId, creatorId, receiverId, receiverId)
    chat = currentChat.first
    if currentChat.count == 0
      chat = Chat.create creator_id: creatorId, receiver_id: receiverId
    else
      res["messages"] = Message.where('chat_id = ?', chat.id).order('created_at asc').limit(50)
    end
    res["chatId"] = chat.id
    res["toUser"] = Person.find(receiverId)
    return res
  }
end
