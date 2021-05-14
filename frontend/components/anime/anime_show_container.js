import { connect } from "react-redux"
import AnimeShow from "./anime_show"
import { fetchAnime } from "../../utils/anime_utils"

const mSTP = ( {entities}, ownprops ) => {
    debugger
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