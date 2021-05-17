import React from "react"

import { Link } from "react-router-dom"

const AnimeIndexItem = (props) => {
    return(
        
        <>
            <div className={props.photo}><Link to={`/animes/${props.anime.id}`}><img src={props.anime.photoUrl}/></Link></div>  
            <div className={props.name}><Link to={`/animes/${props.anime.id}`} ><h1>{props.anime.name}</h1></Link></div>
            <p className={props.body}>{props.anime.description}</p>
        </>
    )
}

export default AnimeIndexItem;  