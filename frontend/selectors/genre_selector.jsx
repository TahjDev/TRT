export const selectAllAnimes = (animes) => {
    debugger
    return Object.values(animes)
}



export const selectAnimeByCategory = (animes, genres) => {
    debugger
   if (Object.keys(animes) < 8) return null

   const animesArray = selectAllAnimes(animes);
   let correctAnime = [];

   if (genres.length === 0 ) return animesArray

   for (let i = 0; i < animesArray.length; i++) {
       let bool = false;
       debugger
       let j = 0
       animesArray[i].genres.forEach((genre) => {
           if (genres.includes(Object.values(genre)[0].name)) {
                    j += 1
                    debugger
            }
            debugger
            j === genres.length ? bool = true : null
        });
         if (bool === true ){ correctAnime.push(animesArray[i])} 

   }
  
             
 

    return correctAnime;
}