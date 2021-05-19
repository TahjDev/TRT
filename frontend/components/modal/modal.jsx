import { connect } from "react-redux"
import React from "react"
import { closeModal } from "../../actions/modal_actions"
import LoginContainer from "../session/login_container"
import SignupModalContainer from "./signup_modal_container"
import SidebarSignupModalContainer from "./sidebar_signup_modal_container"
import SidebarLogoutModalContainer from "./sidebar_logout_modal_container"
import AnimeSelectorModalContainer from "./anime_selector_modal_container"


const Modal = ({ modal, closeModal }) => {
    
    if (!modal) return null;
    
    let component;
    switch(modal) {
        case "login":
            component = <LoginContainer/>
            break;
        case "signup":
            // 
            component = <SignupModalContainer/>
            break;
        case "sidebarSignup":
            component = <SidebarSignupModalContainer/>
            break;
        case "sidebarLogout":
            component = <SidebarLogoutModalContainer/>
            break;
        case "search":
            component = <AnimeSelectorModalContainer/>
        default:
        return null;
    }
    let correctDisplay = [];

    if (modal === "login" || modal === "signup") {
         correctDisplay.push(
            <div className="modal-background" onClick={closeModal}>
                <div className="modal-child" onClick={e => e.stopPropagation()}>
                    {component}
                </div>
            </div>
         )
        
    }
         

    if (modal === "sidebarSignup") {
        
       correctDisplay.push(
       <div className="side-modal-background" onClick={closeModal}>
            <div className="side-modal-child" onClick={e => e.stopPropagation()}>
                {component}
            </div>
        </div>
       )
    }

    if (modal === "sidebarLogout") {
        
        correctDisplay.push(
            <div className="side-modal-background" onClick={closeModal}>
                <div className="side-modal-child-logout" onClick={e => e.stopPropagation()}>
                    {component}
                </div>
            </div>
        )
    }

    if (modal === "search") {
        correctDisplay.push(
            <div className="search-modal-background" onClick={closeModal}>
                <div className="search-modal-child" onClick={e => e.stopPropagation()}>
                    {component}
                </div>
            </div>
        )
    }
    
    

    return (
        
        correctDisplay[0] 
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

