import React from "react"
import EpisodeItem from "./episode_item"

class AnimeShow extends React.Component {
    constructor(props) {
        super(props)
        }

    componentDidMount(){
        this.props.fetchAnime(props.anime.id)
    }

    mappedEpisodes(){
    return  this.props.anime.episodes.map(ep => {
            return (
                <EpisodeItem
                episode={ep}
                />
            )
             })
    }


    render() {
        return (
            <>
            <div className="anime">
                <img src={this.props.anime.photoUrl} />
                <h1>{this.props.anime.name}</h1>
                <p>{this.props.anime.description}</p>
                <button></button>
            </div>
            <div>
                {this.mappedEpisodes()}
            </div>
            </>
        )
    }
     
}

export default AnimeShow;