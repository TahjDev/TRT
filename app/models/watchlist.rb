class Watchlist < ApplicationRecord
    belongs_to :watcher,
    primary_key: :id,
    foreign_key: :watcher_id,
    class_name: :User 

    belongs_to :watched,
    primary_key: :id,
    foreign_key: :watched_id,
    class_name: :Anime
end