import { connect } from "react-redux"
import {loginUser } from "../../actions/session_actions"
import { openModal } from "../../actions/modal_actions"
import Login from "./login"
import React from "react"

const mDTP = dispatch => {
   return {
       loginUser: (user) => dispatch(loginUser(user)),
        otherForm: (
           <button onClick={() => dispatch(openModal("signup"))}>
               SignUp
           </button>
       ),
       closeModal: () => dispatch(closeModal())

   } 
}

export default connect(null, mDTP)(Login)