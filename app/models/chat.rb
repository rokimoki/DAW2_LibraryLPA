class Chat < ApplicationRecord
  belongs_to :creator, :class_name => 'Person'
  belongs_to :receiver, :class_name => 'Person'

  has_many :messages
end
