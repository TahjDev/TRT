import React from "react"

import { Link } from "react-router-dom"

const AnimeIndexItem = ({ anime }) => {
    debugger
    return(
        
        <div className="anime">
            <Link to={`/animes/${anime.id}`}><img src={anime.photoUrl} a /></Link>  
            <Link to={`/animes/${anime.id}`} > <h1> {anime.name} </h1> </Link>
            <p>{anime.description}</p>
        </div>
    )
}

export default AnimeIndexItem;  