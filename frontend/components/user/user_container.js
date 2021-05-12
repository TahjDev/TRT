import { connect } from "react-redux"
import User from "./user"
import React from "react"
import { withRouter } from "react-router-dom"

const mSTP = ({ session }, ownprops) => {
  
   const { currentUser } = session
    return {
        user: currentUser
    }
}


export default withRouter(connect(mSTP, null)(User))