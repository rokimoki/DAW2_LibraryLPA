class Person < ApplicationRecord
  validates_presence_of :name, :email, :password
  validates :email, uniqueness: true

  has_one :geolocation
  has_and_belongs_to_many :chat_rooms
  has_many :comments
  has_many :book_loans

  has_many :created_chats, :class_name => 'Chat', :foreign_key => 'creator_id'
  has_many :received_chats, :class_name => 'Chat', :foreign_key => 'receiver_id'

  scope :login, ->(email, password) { Person.where('email = ?', email).where('password = ?', password) }
  scope :checkMail, -> (email) { Person.where('email = ?', email) }
  scope :register, ->(name, email, password) {
    person = Person.new name: name, email: email, password: password, picture: 'http://res.cloudinary.com/alejandroulpgc/image/upload/v1524937821/avatar_none.png'
    person.save!
  }
  scope :getAllUserLoans, -> (userId) {
    Person.find(userId).book_loans
  }
end
