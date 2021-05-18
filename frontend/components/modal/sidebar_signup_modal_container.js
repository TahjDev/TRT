import { connect } from "react-redux"
import { openModal } from "../../actions/modal_actions"
import SidebarSignupModal from "./sidebar_signup_modal"
import React from "react"

const mDTP = dispatch => {
     // debugger
     return {
         
       SigninButton: <button className="sidebar-button"
     onClick = {() => dispatch(openModal("signup"))}> 
             <p>Create Account</p>
             <p className="little-p">Join for free!!</p>
       </button> ,
       SignupButton: <button className="sidebar-button"
            onClick={() => dispatch(openModal("login"))}>
                 <p>Sign In</p>
                 <p className="little-p">If you already have an account come on in!</p>
       </button>


   } 
}

export default connect(null, mDTP)(SidebarSignupModal)