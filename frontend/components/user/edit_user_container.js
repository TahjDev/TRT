import { connect } from "react-redux"
import EditUser from "./edit_user"
import React from "react"
import { withRouter } from "react-router-dom"
import { updateUser, fetchUser } from "../../actions/session_actions"

const mSTP = ({ session }) => {
  
   const { currentUser } = session
    return {
        user: currentUser
    }
}

const mDTP = dispatch => {
    return {
        fetchUser: (id) => dispatch(fetchUser(id)), 
        updateUser: (formData) => dispatch(updateUser(formData))
    }
}

export default withRouter(connect(mSTP, mDTP)(EditUser))