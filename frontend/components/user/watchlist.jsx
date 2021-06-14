import React from "react"
import WatchlistEpisodeItem from "../anime/watchlist_episode"
import { deleteWatchlist } from "../../utils/watchlist_util"

class Watchlist extends React.Component {
    constructor(props) {
        super(props)
        this.stae = {
            episodeId: ""
        }
       this.deleteEpisode = this.deleteEpisode.bind(this)
    }

    componentDidMount(){
        this.props.fetchUser(this.props.user.id)
    }
    componentDidUpdate(){
        this.props.fetchUser(this.props.user.id)
    }
   

    mappedEpisodes() {
          debugger
          let watchlistId;
        return this.props.user.episodes.map(ep => {
            const id = Object.values(ep)[0].id
            const episode = ep[id]
            const userId = this.props.user.id


             this.props.user.watchlist.forEach(list => {
                list[userId].watchedId === id ? watchlistId = list[userId].id : null
            })

            return (
                <WatchlistEpisodeItem
                    key={id}
                    episode={episode}
                    watchlistId={watchlistId}
                    deleteEpisode = {this.deleteEpisode}
                />
            )
        })
    }

    deleteEpisode(id) {
        this.setState({
            episodeId: id
        })
        deleteWatchlist(id)
    }

    render() {
        if (!this.props.user.episodes) return null
        return (
            <div className="watchlist-container">
                    <h2 >MY WATCHLIST</h2>
                <div className="watchlist">
                        {this.mappedEpisodes()}
                </div>
            </div>
        )
    }
}

export default Watchlist;