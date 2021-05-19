import { RECEIVE_GENRE, REMOVE_GENRE} from "../actions/genre_actions"


const GenreReducer = (state ={}, action) => {
    Object.freeze(state)
    switch(action.type) {
        case RECEIVE_GENRE:
            return {...state, [action.genre]: action.genre}
        case REMOVE_GENRE:
            let nextState = {...state}
            delete nextState[action.genre]
            return nextState
        default:
            return state
    }
}

export default GenreReducer