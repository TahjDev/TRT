import { combineReducers } from "redux";
import animesReducer from "./animes_reducer"


const EntitiesReducer = combineReducers( {
    animes: animesReducer
})

export default EntitiesReducer;