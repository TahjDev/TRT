class Comment < ApplicationRecord 
    belongs_to :commenter,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
    
end