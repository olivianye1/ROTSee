json.extract! attendance, :id, :attended, :cadet_id, :event_id, :created_at, :updated_at
json.url cadet_url(attendance, format: :json)