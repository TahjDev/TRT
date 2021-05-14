
@animes.each do |anime|
    json.set! anime.id do 
        json.extract! anime, :id, :name, :description, :year, :service_id
        json.photoUrl url_for(anime.photo)
    end
end

