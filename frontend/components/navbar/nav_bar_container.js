import { connect } from 'react-redux'
import React from "react"
import NavBar from "./nav_bar"
import { logout } from "../../actions/session_actions"
import { removeError } from "../../actions/session_actions"

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
       removeError: () => dispatch(removeError())
   } 
   
}

export default connect(mSTP, mDTP)(NavBar)