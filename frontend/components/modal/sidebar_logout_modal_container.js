import { connect } from "react-redux"
import { openModal, closeModal } from "../../actions/modal_actions"
import SidebarLogoutModal from "./sidebar_logout_model"
import React from "react"
import { logout } from "../../actions/session_actions"

const mDTP = dispatch => {
    return {
       logout: () => dispatch(logout()),
       closeModal: () => dispatch(closeModal())
    }
}

export default connect(null, mDTP)(SidebarLogoutModal)