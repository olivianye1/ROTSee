json.extract! event, :id, :eventDate, :primaryType, :subType, :details, :created_at, :updated_at
json.url event_url(event, format: :json)
