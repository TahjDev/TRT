import React from "react"
import { Link } from "react-router-dom"

const WatchlistEpisodeItem = ({ episode }) => {

    // turn this entire div into a link

    return (
        <>
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

        </>
    )
}

export default WatchlistEpisodeItem;