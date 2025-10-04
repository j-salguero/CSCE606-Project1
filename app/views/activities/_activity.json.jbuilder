json.extract! activity, :id, :ActivityName, :Description, :ActivityType, :created_at, :updated_at
json.url activity_url(activity, format: :json)
