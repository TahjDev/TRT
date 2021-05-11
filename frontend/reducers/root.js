import SessionsReducer from "./sessions"
import { combineReducers } from "redux";
import EntitiesReducer from "./entities"


const RootReducer = combineReducers({
        session: SessionsReducer,
        entities: EntitiesReducer
    
})

    export default RootReducer;