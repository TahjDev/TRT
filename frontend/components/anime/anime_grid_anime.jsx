import React from "react"

import { Link } from "react-router-dom"

const AnimeGridItem = (props) => {
    const modal = props.closeModal ? props.closeModal : null
    return (
    <Link to={`/animes/${props.anime.id}`} onClick={()=> modal ? modal() : null }>
        <div className="anime-grid-bkg-img" style={{
            backgroundImage:
                `url(${props.anime.backgroundPhoto})`
        }}>
            <div className="anime-grid-img"><img src={props.anime.photoUrl} /></div>

            <div className="lower-div"><h1>{props.anime.name}</h1></div>
        </div>
    </Link>
    )
}


export default AnimeGridItem;  