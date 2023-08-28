json.extract! task, :id, :team_id, :description, :created_at, :updated_at
json.url task_url(task, format: :json)
