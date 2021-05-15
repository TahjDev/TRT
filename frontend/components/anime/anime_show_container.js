import { connect } from "react-redux"
import AnimeShow from "./anime_show"
import { fetchAnime } from "../../actions/anime_actions"

const mSTP = ( {entities}, ownprops ) => {
  
    const { animes } = entities;
    const newId = ownprops.match.params.id
    return {
        anime: animes[newId]
    }
}

const mDTP = dispatch => {
    return {
        fetchAnime: (id) => dispatch(fetchAnime(id))
    }
}

export default connect(mSTP, mDTP)(AnimeShow)