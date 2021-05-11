import SessionsReducer from "./sessions_reducer";
import { combineReducers } from "redux";
import EntitiesReducer from "./entities_reducer";
import UiReducer from "./ui_reducer";

const RootReducer = combineReducers({
        session: SessionsReducer,
        entities: EntitiesReducer,
        ui: UiReducer
    
})

    export default RootReducer;