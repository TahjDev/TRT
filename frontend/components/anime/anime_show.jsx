import React from "react"
import EpisodeItem from "./episode_item"
import { postWatchlist} from "../../utils/watchlist_util"
import AnimeIndexItem from "./anime_index_item"

class AnimeShow extends React.Component {
    constructor(props) {
        super(props)
        // 
        this.addToWatchList = this.addToWatchList.bind(this)
        }

    componentDidMount(){
        this.props.fetchAnime(this.props.match.params.id)
    }

    mappedEpisodes(){
    return  this.props.anime.episodes.slice(1).map(ep => {
            const id = Object.values(ep)[0].id
            const episode = ep[id]
            // 
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
       
        if (this.props.anime === undefined) return null
        if (this.props.anime.episodes === undefined) return null 
        const button = (
            <button id="watchlist-button" onClick={this.addToWatchList}>ADD TO WATCHLIST </button>
        )
        return (
            <>
                    <div className="display-background-img-show"
                        style={{
                            backgroundImage:
                                `url(${this.props.anime.backgroundPhoto})`
                        }}>
                        <div className="gradient-show">
                            <div className="displayed-anime-show"    >
                            <AnimeIndexItem 
                            name={"display-anime-name-show"}
                             photo={"display-anime-photo-show"} 
                             anime={this.props.anime} 
                             body={"display-body-show"}
                            />
                            {button}
                            </div>
                        </div>
                    </div>
                    
                <div className="display-episode">
                 {
                        <EpisodeItem episode={Object.values(this.props.anime.episodes[0])[0]}/>
                }
                    
                {/* {this.mappedEpisodes()} */}
            </div>
            </>
        )
    }
     
}

export default AnimeShow;