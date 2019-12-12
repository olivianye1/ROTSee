json.extract! task, :id, :date_created, :date_due, :description, :created_at, :updated_at
json.url task_url(task, format: :json)
