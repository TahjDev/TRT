
@animes.each do |anime|
    json.set! anime.id do 
        json.extract! anime, :id, :name, :description, :year, :service_id
        json.photoUrl url_for(anime.photo)
        json.backgroundPhoto url_for(anime.background_photo)
    end
end

