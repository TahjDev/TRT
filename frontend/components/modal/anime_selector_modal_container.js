import { connect } from "react-redux";
import React from "react";

import { fetchAnimes } from "../../actions/anime_actions"
import { closeModal } from "../../actions/modal_actions"
import { recieveGenre, removeGenre } from "../../actions/genre_actions"
import AnimeSelectorModal from "./anime_selector_modal"

const mSTP = (state) => {
    
    const animes = state.entities.animes
    return {
        animes

    }
}

const mDTP = dispatch => {
   return  {
       fetchAnimes: () => dispatch(fetchAnimes()),
       closeModal: () => dispatch(closeModal()),
       recieveGenre: () => dispatch(recieveGenre),
       removeGenre: () => dispatch(removeGenre)
   }
}

export default connect(mSTP, mDTP)(AnimeSelectorModal)