import { connect } from "react-redux"
import React from "react"
import { closeModal } from "../../actions/modal_actions"
import LoginContainer from "../session/login_container"
import SignupContainer from "../session/signup_container"

const Modal = ({ modal, closeModal }) => {
    
    if (!modal) return null;
    
    let component;
    switch(modal) {
        case "login":
            component = <LoginContainer/>
            break;
        case "signup":
            component = <SignupContainer/>
            break;
        default:
        return null;
    }
    return (
        <div className="modal-background" onClick={closeModal}> 
        <div className="modal-child" onClick={e => e.stopPropagation()}>
            { component }
        </div>
        </div>
    )

}


const mSTP = state => {
    return {
        modal: state.ui.modal
    }
}

const mDTP = dispatch => {
    return {
        closeModal: () => dispatch(closeModal())
    }
}

export default connect(mSTP, mDTP)(Modal)