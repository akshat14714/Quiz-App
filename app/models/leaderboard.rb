class Leaderboard < ApplicationRecord
  belongs_to :sub_genre
  belongs_to :user
end
