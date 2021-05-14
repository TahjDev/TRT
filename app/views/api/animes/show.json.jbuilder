
json.extract! anime, :id, :name, :description, :year, service_id
json.photoUrl url_for(anime.photo)
json.episodes anime.episodes