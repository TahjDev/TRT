import React from "react"

const AnimeIndexItem = ({ anime }) => {
    return(
        
        <div className="anime">
            <img src={anime.photoUrl} a/>
            <h1> {anime.name} </h1>
            <p>{anime.description}</p>
        </div>
    )
}

export default AnimeIndexItem;  