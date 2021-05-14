import React from "react"

class AnimeShow extends React.Component {
    constructor(props) {
        super(props)
        }

    componentDidMount(){
        
    }


    render() {
        return (
            <div className="anime">
            <img src={anime.photoUrl} />
            <h1>{anime.name}</h1>
            <p>{anime.description}</p>
        </div>
        )
    }
     
}

export default AnimeShow;