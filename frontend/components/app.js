import React from "react"
import { Route } from 'react-router-dom'
import EditUserContainer from "./user/edit_user_container"
import SignupContainer from "./session/signup_container"
import NavBarContainer from "./navbar/nav_bar_container"
import AnimeIndexContainer from "./anime/animes_index_container"
import Modal from "./modal/modal"
const App = () => {
   return ( 
         <div>
            <Modal />
            <Route path="/" component={NavBarContainer}/>
            <Route exact path="/" component={SignupContainer} />
            <Route path="/view" component={AnimeIndexContainer}/>
            <Route path="/editprofile" component={EditUserContainer}/>
            <Route path={`/animes/:id`}/>

         </div>
   )

}

export default App;