import { RECEIVE_ANIME, RECEIVE_ANIMES} from "../actions/anime_actions"


export const AnimesReducer = (state={}, action) => {
    Object.freeze(state)

    switch(action.type) {
        case RECEIVE_ANIMES: 
            return action.animes
        case RECEIVE_ANIME: 
            return {...state, [action.anime.id]: action.anime}
        default:
            return state
    }
}

export default AnimesReducer