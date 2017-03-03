json.extract! usertrack, :id, :guid, :url, :datetime, :created_at, :updated_at
json.url usertrack_url(usertrack, format: :json)
