import React from "react"

class AnimeShow extends React.Component {
    constructor(props) {
        super(props)
        }

    componentDidMount(){
        this.props.fetchAnime(props.anime.id)
    }

    mappedEpisodes(){
        this.props.anime.episodes.map(ep => {
            
        })
    }


    render() {
        return (
            <>
            <div className="anime">
                <img src={anime.photoUrl} />
                <h1>{anime.name}</h1>
                <p>{anime.description}</p>
            </div>
            <div>

            </div>
            </>
        )
    }
     
}

export default AnimeShow;