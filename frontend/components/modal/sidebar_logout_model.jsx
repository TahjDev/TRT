import React from "react"
import {logout} from "../../actions/session_actions"
import { Link } from "react-router-dom"

const SidebarLogoutModal = (props) => {
    return (
        <div className="sidebar-background-logout">
           
           <Link to={"/editprofile"} > 
           <button className="sidebar-button" onClick={() => {
               props.closeModal()
           }}>
               <p>MY WATCHLIST</p>
               <p>Keep track of your show and movies.</p>
            </button>
            </Link>

           <Link to={"/editprofile"} > 
            <button className="sidebar-button"  onClick={() => {
               props.closeModal()
           }}>
               <p>EDIT PROFILE</p>
               <p>Change your Username and Profile.</p>
            </button>
            </Link>

           <Link to={"/"} > 
                <button className="sidebar-button" onClick={() => {
               props.closeModal()
               props.logout()
           }}>
               <p>SIGN OUT</p>
               <p>See you again soon!</p>
            </button>
            </Link>


        </div>
    )
}

export default SidebarLogoutModal;