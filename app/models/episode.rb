class Episode < ApplicationRecord 


    has_one_attached :video

    belongs_to :anime,
    primary_key: :id,
    foreign_key: :anime_id,
    class_name: :Anime

    has_many :watch_lists,
    primary_key: :id,
    foreign_key: :watched_id,
    class_name: :Watchlist

    has_many :watchers, 
    through: :watch_lists,
    source: :watcher


end