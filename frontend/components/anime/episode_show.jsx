import React from "react"
import EpisodeItem from "./episode_item"
import { postWatchList } from "../../utils/watchlist_util"
import { fetchEpisode } from "../../utils/anime_utils"
class EpisodeShow extends React.Component {
    constructor(props) {
        super(props)
     
    }

    componentDidMount() {
        fetchEpisode(this.props.epId)
        .then(ep => {this.props.fetchAnime(ep.animeId)})
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

    currentEpisode(){
        let current;
        this.props.anime.episodes.forEach( ep => {
            const id = Object.values(ep)[0].id
            const episode = ep[id]
            if (this.props.match.params.id == id) current = episode
        });
        return current;
    }


    render() {
        
        if (this.props.anime === undefined) return null
        debugger
        const currentEp = this.currentEpisode()
        return (
            <>
            <video id="vid"width="320" height="240" controls src={currentEp.videoUrl}></video>
             
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

export default EpisodeShow;