import { connect } from "react-redux"
import  EpisodeShow  from "./episode_show"
import { fetchAnime, fetchEpisode } from "../../actions/anime_actions"

const mSTP = ({ session, entities }, ownprops) => {
    const { animes } = entities;
    const animeId = ownprops.match.params.id
    const { currentUser } = session
    
    return {
        anime: animes[animeId],
        epId: ownprops.match.params.id,
        user: currentUser
    }
}

const mDTP = dispatch => {
    return {
        fetchAnime: (id) => dispatch(fetchAnime(id)),
       
    }
}

export default connect(mSTP, mDTP)(EpisodeShow)