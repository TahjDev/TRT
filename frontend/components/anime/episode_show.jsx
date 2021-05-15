import React from "react"
import EpisodeItem from "./episode_item"
import { postWatchList } from "../../utils/watchlist_util"

class AnimeShow extends React.Component {
    constructor(props) {
        super(props)
        debugger
    }

    componentDidMount() {
        this.props.fetchAnime(this.props.match.params.animeId)
    }

    mappedEpisodes() {
        return this.props.anime.episodes.map(ep => {
            const id = Object.values(ep)[0].id
            const episode = ep[id]
            debugger
            return (
                <EpisodeItem
                    key={id}
                    episode={episode}
                />
            )
        })
    }



    render() {
        debugger
        if (this.props.anime === undefined) return null
        debugger
        return (
            <>
                <div className="anime">
                    <img src={this.props.anime.photoUrl} />
                    <h1>{this.props.anime.name}</h1>
                    <p>{this.props.anime.description}</p>
                    <button> </button>
                </div>
                <div>
                    {this.mappedEpisodes()}
                </div>
            </>
        )
    }

}

export default AnimeShow;