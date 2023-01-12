json.extract! user_about, :id, :user_id, :fav_club, :comments, :created_at, :updated_at
json.url user_about_url(user_about, format: :json)
