import React from "React"
import EpisodeItem from "../anime/episode_item"
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
        if (!this.props.user.episodes) return null
        return (
            <div>
                <h2>MY WATCHLIST</h2>
                <div>
                    {this.mappedEpisodes()}
                </div>
            </div>
        )
    }
}

export default Watchlist;