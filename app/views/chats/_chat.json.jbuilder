json.extract! chat, :id, :creator_id, :receiver_id, :created_at, :updated_at
json.url chat_url(chat, format: :json)
