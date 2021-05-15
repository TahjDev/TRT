import React from "react"

const EpisodeItem = (props) => {
    return (
        <div>
            <img src={props.episode.photoUrl} alt="episode_img"/>
            <p>{props.episode.name}</p>
        </div>
    )
}

export default EpisodeItem;