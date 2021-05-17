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
                <div>
                    <h1>E1 - {episode.name}</h1>
                    <p>{episode.description}</p>
                </div>
            </Link> 
            
        </>
    )
}

export default EpisodeItem;