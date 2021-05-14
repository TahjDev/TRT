class Service < ApplicationRecord 
    has_many :anime,
    primary_key: :id,
    foreign_key: :service_id,
    class_name: :Anime
end