import React from "react"
import { Link } from "react-router-dom"

const WatchlistEpisodeItem = ({ episode, watchlistId, deleteEpisode}) => {

    // turn this entire div into a link

    return (
        <>
        <div className="watchlist-item">
            <Link to={{
                pathname: `/episode/${episode.id}`,
                state: {
                    animeId: episode.id
                }
            }}>
                <img className="episode-watchlist-img" src={episode.photoUrl} alt="episode_img" />
                <div>

                    <p>{episode.description}</p>
                </div>
                <div className="episode-dropdown">
                    <h1>E1 - {episode.name}</h1>
                   
                </div>
              
            </Link>
            <div onClick={(e) => deleteEpisode(watchlistId)} id="trash-button" className="fas fa-trash-alt"></div>
        </div>
     

        </>
    )
}

export default WatchlistEpisodeItem;