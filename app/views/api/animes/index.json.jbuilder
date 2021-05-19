
@animes.each do |anime|
    json.set! anime.id do 
        json.extract! anime, :id, :name, :description, :year, :service_id
        json.genres
        json.photoUrl url_for(anime.photo)
        json.backgroundPhoto url_for(anime.background_photo)
        json.genres do 
            json.array! anime.genres do |genre|
                json.set! genre.id do 
                    json.extract! genre, :name
                end
            end
        end
    end
end

