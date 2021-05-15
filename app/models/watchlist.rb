class Watchlist < ApplicationRecord

    validates: watcher_id: uniqueness: { scope: :episode }

    belongs_to :watcher,
    primary_key: :id,
    foreign_key: :watcher_id,
    class_name: :User 

    belongs_to :episode,
    primary_key: :id,
    foreign_key: :watched_id,
    class_name: :Anime
end