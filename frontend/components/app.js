import React from "react"
import { Route, Switch } from 'react-router-dom'
import EditUserContainer from "./user/edit_user_container"
import SignupContainer from "./session/signup_container"
import NavBarContainer from "./navbar/nav_bar_container"
import AnimeIndexContainer from "./anime/animes_index_container"
import AnimeShowContainer from "./anime/anime_show_container"
import EpisodeShowContainer from "./anime/episode_show_container"
import Modal from "./modal/modal"
import WatchlistContainer from "./user/watchlist_container"


const App = () => {
   return ( 
         <div>
               <Modal />
               <Route path="/" component={NavBarContainer}/>
               <Route exact path="/" component={SignupContainer} />
               <Route path="/view" component={AnimeIndexContainer}/>
               <Route path="/editprofile" component={EditUserContainer}/>
               <Route path={`/animes/:id`} component={AnimeShowContainer}/>
               <Route path={`/episode/:id`} component={EpisodeShowContainer}/>
               <Route path={'/watchlist'} component={WatchlistContainer}/>
         </div>
   )

}

export default App;