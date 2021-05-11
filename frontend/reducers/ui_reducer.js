import { combineReducers } from "redux"
import ModalReducer from "./modals_reducer"

const Ui = combineReducers({
    modal: ModalReducer
})

export default Ui;