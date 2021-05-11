import { connect } from "react-redux"
import User from "./user"
import React from "react"

const mSTP = ({ session }) => {
  
   const { currentUser } = session
    return {
        user: currentUser
    }
}


export default connect(mSTP, null)(User)