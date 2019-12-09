json.extract! message, :id, :name, :detachment, :email, :subject, :body, :created_at, :updated_at
json.url message_url(message, format: :json)
