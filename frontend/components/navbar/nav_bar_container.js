import { connect } from 'react-redux'
import React from "react"
import NavBar from "./nav_bar"
import { logout } from "../../actions/session"
import { removeError } from "../../actions/session"

const mSTP = ({ session }) => {
    const { currentUser } = session
    let { error } = session

    if ( error instanceof Array ) { error = error.join(" ") }
    debugger
    return {
        currentUser,
        error
    }
}

const mDTP = dispatch => {
    
   return {
       logout: () => dispatch(logout()),
       removeError: () => dispatch(removeError())
   } 
   
}

export default connect(mSTP, mDTP)(NavBar)