json.array!(@users) do |user|
  json.extract! user, :id, :name, :twitter_id, :message
  json.url user_url(user, format: :json)
end
