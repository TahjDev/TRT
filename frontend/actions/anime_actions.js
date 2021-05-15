import * as AnimeAPIUtil from "../utils/anime_utils"

export const RECEIVE_ANIMES = "RECEIVE_ANIMES" 
export const RECEIVE_ANIME = "RECEIVE_ANIME" 


const receiveAnimes = (animes) => {
    return {
        type: RECEIVE_ANIMES,
        animes
    }
}
const receiveAnime = (anime) => {
    return {
        type: RECEIVE_ANIME,
        anime
    }
}


export const fetchAnimes = () => dispatch => {
   return AnimeAPIUtil.fetchAnimes().then( animes => dispatch(receiveAnimes(animes)))
}

export const fetchAnime = (id) => dispatch => {
  return  AnimeAPIUtil.fetchAnime(id).then(anime => dispatch(receiveAnime(anime)))
}