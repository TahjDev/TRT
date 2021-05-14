import { connect } from "react-redux"
import AnimeShow from "./anime_show"

const mSTP = ( {entities}, ownprops ) => {
    debugger
    const { animes } = entities;
    const newId = ownprops.match.params.id
    return {
        anime: animes[newId]
    }
}


export default connect(mSTP, null)(AnimeShow)