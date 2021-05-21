import React from "react"
import WatchlistEpisodeItem from "../anime/watchlist_episode"

class Watchlist extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount(){
        this.props.fetchUser(this.props.user.id)
    }

    mappedEpisodes() {
        return this.props.user.episodes.map(ep => {
            const id = Object.values(ep)[0].id
            const episode = ep[id]
            
            return (
                <WatchlistEpisodeItem
                    key={id}
                    episode={episode}
                />
            )
        })
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