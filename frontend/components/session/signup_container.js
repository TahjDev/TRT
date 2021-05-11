import { connect } from 'react-redux'
import {openModal } from "../../actions/modal_actions"
import Signup from "./signup"
import React from "react"

const mDTP = dispatch => {
    return {
        createNewUser: (formUser) => dispatch(createNewUser(formUser)),
            otherForm: (
            <button onClick={() => dispatch(openModal("login"))}>
                Login
            </button>
        ),
        closeModal: () => dispatch(closeModal())
    }
}

export default connect(null, mDTP)(Signup)