json.extract! comment, :id, :body, :song_time, :song_id, :parent_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
