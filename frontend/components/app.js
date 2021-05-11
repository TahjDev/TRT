import React from "react"
import { Route, HashRouter } from 'react-router-dom'
import UserContainer from "./user/user_container"
import SignupContainer from "./session/signup_container"
import NavBarContainer from "./navbar/nav_bar_container"
import LoginContainer from "./session/login_container"
const App = () => {
   return ( <HashRouter>
                <Route path="/" component={NavBarContainer}/>
                <Route path="/signup" component={SignupContainer} />
                <Route path="/user" component={UserContainer} />
                <Route path="/login" component={LoginContainer}></Route>
            </HashRouter>
   )

}

export default App;