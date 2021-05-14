class Genre < ApplicationRecord
    has_many :filters,
    primary_key: :id, 
    foreign_key: :filter_id,
    class_name: :Filter 

    has_many :animes,
    through: :filters,
    source: :anime 
end