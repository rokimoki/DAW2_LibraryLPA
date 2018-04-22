class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name

  has_one :geolocation
  has_and_belongs_to_many :chat_rooms
  has_many :comments
  has_many :book_loans

  has_many :created_chats, :class_name => 'Chat', :foreign_key => 'creator_id'
  has_many :received_chats, :class_name => 'Chat', :foreign_key => 'receiver_id'

end
