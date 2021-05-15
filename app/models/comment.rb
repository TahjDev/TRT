class Comment < ApplicationRecord 
    belongs_to :commenter,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

    belongs_to :episode,
    primary_key: :id,
    foreign_key: :episode_id,
    class_name: :Episode
end