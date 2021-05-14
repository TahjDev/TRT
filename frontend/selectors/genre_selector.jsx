export const selectAllAnimes = ( { entities  }) => {
    const animes = entities.animes;
    return Object.values(animes)
}



export const selectAnimeByCategory = (state) => {
   const genres = state.entities.genres;
   const animes = selectAllAnimes(state);
   const correctAnime = [];

    animes.forEach(anime => {
        anime.genres.forEach(genre => {
            if (!genres.includes(genre)) {
                return
            }
            correctAnime.push(anime)
        });
    });

    return correctAnime;
}