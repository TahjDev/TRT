export const selectAllAnimes = ( { entities  }) => {
    const animes = entities.animes;
    return Object.values(animes)
}



export const selectAnimeByCategory = (state) => {
   const genres = Object.values(state.entities.genres);
   const animes = selectAllAnimes(state);
   if (!genres) return animes
   for (let i = 0; i < animes.length; i++) {
       let bool = true;
       animes[i].genres.forEach((genre) => {
            const name = Object.values(genre)[0]
            if (!genres.includes(name)) {
                    bool = false
            }
        });
        if (bool === false) {continue}
         if (bool === true ){ correctAnime.push(animes[i])} 
   }
  
             
 

    return correctAnime;
}