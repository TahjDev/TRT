import { connect } from "react-redux"
import {loginUser } from "../../actions/session"
import Login from "./login"
const mDTP = dispatch => {
   return {
       loginUser: (user) => dispatch(loginUser(user))


   } 
}

export default connect(null, mDTP)(Login)