import React from "react"
import { Link } from "react-router-dom"

const EpisodeItem = ({ episode }) => {
    debugger
    // turn this entire div into a link
    return (
        <>
            <Link to={{
                pathname: `/episode/${episode.id}`,
                state: {
                    animeId: episode.id
                }
            }}>
                 <img src={episode.photoUrl} alt="episode_img" />
            </Link> 
            <div>
                 <p>{episode.name}</p>
            </div>
        </>
    )
}

export default EpisodeItem;