import { connect } from "react-redux"
import {loginUser } from "../../actions/session_actions"
import { openModal } from "../../actions/modal_actions"
import { closeModal } from "../../actions/modal_actions"
import { withRouter } from 'react-router-dom';
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

export default withRouter(connect(null, mDTP)(Login))