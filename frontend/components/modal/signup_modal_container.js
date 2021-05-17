import { connect } from 'react-redux'
import { openModal } from "../../actions/modal_actions"
import { createNewUser } from "../../actions/session_actions"
import { closeModal } from "../../actions/modal_actions";
import React from "react"
import SignupModal from './signup_modal'
import {withRouter} from "react-router-dom"

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

export default withRouter(connect(null, mDTP)(SignupModal))