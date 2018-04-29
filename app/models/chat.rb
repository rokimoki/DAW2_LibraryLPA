class Chat < ApplicationRecord
  belongs_to :creator, :class_name => 'Person'
  belongs_to :receiver, :class_name => 'Person'

  has_many :messages

  scope :getChatWithUserId, -> (creatorId, receiverId) {
    res = {}
    currentChat = Chat.where('(creator_id = ? or receiver_id = ?) and (creator_id = ? or receiver_id = ?)', creatorId, creatorId, receiverId, receiverId)
    chat = currentChat.first
    if currentChat.count == 0
      chat = Chat.create creator_id: creatorId, receiver_id: receiverId
    end
    res["chatId"] = chat.id
    res["toUser"] = Person.find(receiverId)
    return res
  }

  scope :getAllChatsByUserId, -> (userId) {
    res = Array.new
    Chat.where('creator_id = ?', userId).each do |chat|
      obj = {}
      obj["chatId"] = chat.id
      obj["toUser"] = Person.find(chat.receiver_id)
      res.push obj
    end
    Chat.where('receiver_id = ?', userId).each do |chat|
      obj = {}
      obj["chatId"] = chat.id
      obj["toUser"] = Person.find(chat.creator_id)
      res.push obj
    end
    return res
  }
end
