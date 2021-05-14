import React from "react"

const AnimeShow = ({ anime }) => {
    debugger
    return(
        <div className="anime">
            <img src={anime.photoUrl} />
            <h1>{anime.name}</h1>
            <p>{anime.description}</p>
        </div>
    )  
}

export default AnimeShow;