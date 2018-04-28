json.extract! person, :id, :name, :email, :picture, :password, :created_at, :updated_at
json.url person_url(person, format: :json)
