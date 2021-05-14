
json.extract! @anime, :id, :name, :description, :year, :service_id
json.photoUrl url_for(@anime.photo)

json.episodes do
    @anime.episodes do |episode|
        json.set! episode.id
        json.extract! episode, :id, :name, :anime_id
        json.videoUrl url_for(episode.video)
    end
end