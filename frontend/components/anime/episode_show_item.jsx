import React from "react"
import { Link } from "react-router-dom"
import { postWatchlist } from "../../utils/watchlist_util"

const EpisodeShowItem = (props) => {
    debugger
    // turn this entire div into a link
    let button;
    if (props.user){
        button = [<button id="watchlist-button" onClick={() => postWatchlist(watchlist)}>ADD TO WATCHLIST </button>]
        const watchlist = {
            watcher_id: props.user.id,
            watched_id: props.episode.id
        }
    }
    else {
        button = [<div className="watchlist-button"><Link to="/"><button id="watchlist-button" onClick={() => postWatchlist(watchlist)}>SIGN TO ENJOY A WATCHLIST</button></Link></div>]
        
    }

    return (
        <>

                <div className="display-background-img"
                    style={{
                        backgroundImage:
                            `url(${props.episode.photoUrl})`
                    }}>

                    <div className="gradient-episode">
                        <div className="displayed-episode-show">
                            <img className="display-anime-photo-show" src={props.anime.photoUrl} alt="props.episode_img" />
                            <h1 className="display-anime-name show">E1 - {props.episode.name}</h1>
                            <p className="display-body-show">{props.episode.description}</p>
                            {button[0]} 
                        </div>

                    </div>

                </div>


        </>
    )
}

export default EpisodeShowItem;