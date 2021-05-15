import { connect } from "react-redux"
import  EpisodeShow  from "./episode_show"
import { fetchAnime, fetchEpisode } from "../../actions/anime_actions"

const mSTP = ({ entities }, ownprops) => {
    const { animes } = entities;
    const animeId = ownprops.match.params.id
    return {
        anime: animes[animeId],
        epId: ownprops.match.params.id
    }
}

const mDTP = dispatch => {
    return {
        fetchAnime: (id) => dispatch(fetchAnime(id)),
       
    }
}

export default connect(mSTP, mDTP)(EpisodeShow)