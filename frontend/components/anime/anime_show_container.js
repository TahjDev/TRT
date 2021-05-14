import { connect } from "react-redux"

const mSTP = ( {entities}, ownprops ) => {
    let { animes } = entities
    const newId = ownprops.match.params.id
    return {
        anime: animes[newId]
    }
}


export default connect(mSTP, null)(AnimeShow)