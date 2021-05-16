json.extract! @user, :id, :email, :username, :password
json.photoUrl @user.photo.attached? ? url_for(@user.photo) : nil

json.episodes do 
    json.array! @user.episodes do |episode|
        json.set! episode.id do
            json.extract! episode, :id, :name, :anime_id
            json.photoUrl url_for(episode.photo)
        end
    end
end