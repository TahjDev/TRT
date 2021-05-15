import React from "react"
import { Link } from "react-router-dom"

const EpisodeItem = ({ episode }) => {
    debugger
    // turn this entire div into a link
    return (
        <div>
            <Link params={{animeId: episode.anmeId}}to={`/episode/${episode.id}`}> <img src={episode.photoUrl} alt="episode_img" /></Link> 
            <p>{episode.name}</p>
        </div>
    )
}

export default EpisodeItem;