json.extract! @user, :id, :email, :username, :password
json.photoUrl @user.photo.attached? ? url_for(@user.photo) : nil

json.watchlist do 
    json.array! @user.watch_lists do |watch_list|
        json.set! @user.id do 
            json.extract! watch_list, :id, :watched_id
        end
    end
end

json.episodes do 
    json.array! @user.episodes do |episode|
        json.set! episode.id do
            json.extract! episode, :id, :name, :anime_id
            json.photoUrl url_for(episode.photo)
        end
    end
end