import React from "react"
import EpisodeItem from "./episode_item"
import { postWatchlist} from "../../utils/watchlist_util"

class AnimeShow extends React.Component {
    constructor(props) {
        super(props)
        debugger
        this.addToWatchList = this.addToWatchList.bind(this)
        }

    componentDidMount(){
        this.props.fetchAnime(this.props.match.params.id)
    }

    mappedEpisodes(){
    return  this.props.anime.episodes.map(ep => {
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

    addToWatchList(){
        const ep = this.props.anime.episodes[0]
        const id = Object.values(ep)[0].id
        const watchlist = {
            watcher_id: this.props.user.id,
            watched_id: id
        }
        postWatchlist(watchlist)
    }



    render() {
        debugger
        if (this.props.anime === undefined) return null
        if (this.props.anime.episodes === undefined) return null 
        debugger
        return (
            <>
            <div className="anime">
                <img src={this.props.anime.photoUrl} />
                <h1>{this.props.anime.name}</h1>
                <p>{this.props.anime.description}</p>
                <button onClick={this.addToWatchList}>ADD TO WATCHLIST </button>
            </div>
            <div>
                {this.mappedEpisodes()}
            </div>
            </>
        )
    }
     
}

export default AnimeShow;