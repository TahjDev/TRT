import { connect } from "react-redux"
import AnimeShow from "./anime_show"
import { fetchAnime } from "../../actions/anime_actions"

const mSTP = ( {entities, session}, ownprops ) => {
    const {currentUser} = session
    const { animes } = entities;
    const newId = ownprops.match.params.id
    return {
        anime: animes[newId],
        user: currentUser
    }
}

const mDTP = dispatch => {
    return {
        fetchAnime: (id) => dispatch(fetchAnime(id))
    }
}

export default connect(mSTP, mDTP)(AnimeShow)