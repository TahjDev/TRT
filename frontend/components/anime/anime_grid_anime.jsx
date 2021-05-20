import React from "react"

import { Link } from "react-router-dom"

const AnimeGridItem = (props) => {
    return (

        <div style={{
            backgroundImage:
                `url(${props.anime.backgroundPhoto})`
        }}>
            <div className="anime-grid-img"><Link to={`/animes/${props.anime.id}`}><img src={props.anime.photoUrl} /></Link></div>
            <div className=""><Link to={`/animes/${props.anime.id}`} ><h1>{props.anime.name}</h1></Link></div>
        
        </div>
    )
}

export default AnimeGridItem;  