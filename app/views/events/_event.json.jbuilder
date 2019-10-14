json.extract! event, :id, :eventID, :eventDate, :primaryType, :subType, :details, :created_at, :updated_at
json.url event_url(event, format: :json)
