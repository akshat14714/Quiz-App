json.extract! leaderboard, :id, :sub_genre_id, :user_id, :score, :created_at, :updated_at
json.url leaderboard_url(leaderboard, format: :json)
