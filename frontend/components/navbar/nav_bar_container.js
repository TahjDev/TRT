import { connect } from 'react-redux'
import React from "react"
import NavBar from "./nav_bar"
import { logout } from "../../actions/session_actions"
import { removeError } from "../../actions/session_actions"
import { openModal } from "../../actions/modal_actions"
import { fetchUser } from "../../actions/session_actions"

const mSTP = ({ session }) => {
    const { currentUser } = session
    
    let { error } = session
    
    return {
        currentUser,
     
        errors : error
    }
}

const mDTP = dispatch => {
    
   return {
       logout: () => dispatch(logout()),
       removeError: () => dispatch(removeError()),
       signup: () => dispatch(openModal("sidebarSignup")),
       logout: () => dispatch(openModal("sidebarLogout")),
       fetchUser: (id) => dispatch(fetchUser(id)),
       search: () => dispatch(openModal("search"))

   } 
   
}

export default connect(mSTP, mDTP)(NavBar)