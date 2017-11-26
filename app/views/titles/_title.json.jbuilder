json.extract! title, :id, :memo, :author, :picture, :created_at, :updated_at
json.url title_url(title, format: :json)
