import { connect } from "react-redux"
import { fetchAnimes } from "../../actions/anime_actions"    
import AnimeIndex from "./anime_index"

const mSTP = ( {entities} ) => {
    let { animes } = entities
    
    animes = Object.values(animes)  
    return {
        animes
    }
}
const mDTP = dispatch => {
    return {
        fetchAnimes: () => dispatch(fetchAnimes())
        
    }
}

export default connect(mSTP, mDTP)(AnimeIndex)