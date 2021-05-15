import { connect } from "react-redux"
import AnimeShow from "./anime_show"
import { fetchAnime } from "../../actions/anime_actions"

const mSTP = ({ entities }, ownprops) => {
    const { animes } = entities;
    const animeId = ownprops.match.params.animeId
    return {
        anime: animes[animeId],
        epId: ownprops.match.params.id
    }
}

const mDTP = dispatch => {
    return {
        fetchAnime: (id) => dispatch(fetchAnime(id))
    }
}

export default connect(mSTP, mDTP)(EpisodeShow)