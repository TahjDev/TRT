import React from "react"

import { Link } from "react-router-dom"

const AnimeGridItem = (props) => {
    
    return (
       
        <div className="anime-grid-bkg-img" style={{
            backgroundImage:
                `url(${props.anime.backgroundPhoto})`
        }}>
            <div className="anime-grid-img"><Link to={`/animes/${props.anime.id}`}><img src={props.anime.photoUrl} /></Link></div>

            <div className="lower-div"><h1>{props.anime.name}</h1></div>
        </div>
    )
}

export default AnimeGridItem;  