import { combineReducers } from "redux";
import animesReducer from "./animes_reducer"
import genresReducer from "./genre_reducer"

const EntitiesReducer = combineReducers( {
    animes: animesReducer,
    genres: genresReducer
})

export default EntitiesReducer;