import { RECEIVE_CURRENT_USER, LOGOUT_CURRENT_USER, RECEIVE_ERROR, REMOVE_ERROR } from "../actions/session_actions"


const _nullSession = {
    currentUser: null,
    error: null
}

const SessionsReducer = (state = _nullSession, action) => {
    Object.freeze(state)
  
    switch (action.type) {
        case RECEIVE_CURRENT_USER:
            return Object.assign({}, {currentUser: action.user})
        case LOGOUT_CURRENT_USER:
            return _nullSession
        case RECEIVE_ERROR:
    
            return { ...state, error: action.error  }
        case REMOVE_ERROR:
            return {...state, error: null}
        default:
            return state;

    }
}

export default SessionsReducer