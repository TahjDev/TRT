import * as SessionAPIUtil from "../utils/session_utils"

export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER"
export const LOGOUT_CURRENT_USER = "LOGOUT_CURRENT_USER"
export const RECEIVE_ERROR = "RECEIVE_ERROR"
export const REMOVE_ERROR = "REMOVE_ERROR"

const receiveCurrentUser = (user) => {
    return {
        type: RECEIVE_CURRENT_USER,
        user
    }   
}

const logoutCurrentUser = () => {
    return {
        type: LOGOUT_CURRENT_USER
    }
}


const receiveError = (error) => {
    return {
        type: RECEIVE_ERROR,
        error
    }
}
export const removeError = () => {
    return {
        type: REMOVE_ERROR
    }
}

export const createNewUser = formUser => dispatch => {
    return SessionAPIUtil.postUser(formUser).then(user => dispatch(receiveCurrentUser(user)), err => dispatch(receiveError(err.responseJSON)))
}
export const loginUser = formUser => dispatch => {
   return SessionAPIUtil.postSession(formUser).then(user => dispatch(receiveCurrentUser(user)), err => dispatch(receiveError(err.responseJSON)))
}
export const logutUser = formUser => dispatch => {
   return SessionAPIUtil.postSession(formUser).then(user => dispatch(receiveCurrentUser(user)))
}

export const logout = () => dispatch => {
 return SessionAPIUtil.deleteSession().then( () => dispatch(logoutCurrentUser()))
}

