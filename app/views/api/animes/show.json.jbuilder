
json.extract! @anime, :id, :name, :description, :year, :service_id
json.photoUrl url_for(@anime.photo)
json.backgroundPhoto url_for(@anime.background_photo)

json.episodes do 
    json.array! @anime.episodes do |episode|
        json.set! episode.id do 
            json.extract! episode, :id, :name, :anime_id, :description
            json.videoUrl url_for(episode.video)
            json.photoUrl url_for(episode.photo)
        end
    end
end