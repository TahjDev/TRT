import React from "react"
import { Route } from 'react-router-dom'
import UserContainer from "./user/user_container"
import SignupContainer from "./session/signup_container"
import NavBarContainer from "./navbar/nav_bar_container"
import LoginContainer from "./session/login_container"
import Modal from "./modal/modal"
const App = () => {
   return ( 
         <div>
            <Modal />
            <Route path="/" component={NavBarContainer}/>
            <Route exact path="/" component={SignupContainer} />
            <Route path="/user" component={UserContainer} />
            
         </div>
   )

}

export default App;