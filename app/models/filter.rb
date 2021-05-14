class Filter < ApplicationRecord 
    belongs_to :genre,
    primary_key: :id,
    foreign_key: :filter_id,
    class_name: :Genre

    belongs_to :anime,
    primary_key: :id, 
    foreign_key: :filtered_id,
    class_name: :Anime


end