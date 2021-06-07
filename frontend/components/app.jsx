import React from "react"
import { Route, Switch } from 'react-router-dom'
import EditUserContainer from "./user/edit_user_container"
import SignupContainer from "./session/signup_container"
import NavBarContainer from "./navbar/nav_bar_container"
import AnimeIndexContainer from "./anime/animes_index_container"
import AnimeShowContainer from "./anime/anime_show_container"
import EpisodeShowContainer from "./anime/episode_show_container"
import Footer from "./footer/footer"
import Modal from "./modal/modal"
import WatchlistContainer from "./user/watchlist_container"
import { AuthRoute, ProtectedRoute} from '../utils/route_utils';


const App = () => {
   return ( 
         <div className="rootdiv">
               <Modal />
            <Route path="/" component={NavBarContainer} />
            <Route exact path="/" component={SignupContainer} />
            <Route path="/view" component={AnimeIndexContainer}/>
            <Route path="/editprofile" component={EditUserContainer}/>
            <Route path={`/animes/:id`} component={AnimeShowContainer}/>
            <Route path={`/episode/:id`} component={EpisodeShowContainer}/>
            <ProtectedRoute path={'/watchlist'} component={WatchlistContainer}/>
         <Route path='/' component={Footer} />

         </div>
   )

}

export default App;