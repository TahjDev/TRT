class Anime < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true

    has_one_attached :photo

    belongs_to :service,
    primary_key: :id,
    foreign_key: :service_id,
    class_name: :Service 

    has_many :episodes,
    primary_key: :id,
    foreign_key: :anime_id,
    class_name: :Episode
    
    has_many :filters, 
    primary_key: :id,
    foreign_key: :filtered_id,
    class_name: :Filter

    has_many :genres,
    through: :filters,
    source: :genre

end