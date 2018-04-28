class ChatRoom < ApplicationRecord
  has_many :messages
  has_and_belongs_to_many :persons
end
