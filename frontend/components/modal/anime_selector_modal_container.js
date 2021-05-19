import { connect } from "react-redux";
import React from "react";
import { selectAnimeByCategory, selectAllAnimes } from "../../selectors/genre_selector"
import { fetchAnime } from "../../actions/anime_actions"
import { closeModal } from "../../actions/modal_actions"
import { recieveGenre, removeGenre } from "../../actions/genre_actions"
import AnimeSelectorModal from "./anime_selector_modal"

const mSTP = (state) => {
    const genre = Object.values(state.entities.genres)
    return {
        animes: selectAnimeByCategory(state),
        genres
    }
}

const mDTP = dispatch => {
   return  {
       fetchAnime: () => dispatch(fetchAnime()),
       closeModal: () => dispatch(closeModal()),
       recieveGenre: () => dispatch(recieveGenre),
       removeGenre: () => dispatch(removeGenre)
   }
}

export default connect(mSTP, mDTP)(AnimeSelectorModal)