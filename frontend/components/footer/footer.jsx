import React from "react"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faGithub } from '@fortawesome/free-solid-svg-icons'

const footer = () => {
    return (
        <div className="footer"> 
            <div className = "contact">
                <h1>Contact Me</h1>
                <div>
                    662.436.3533
                    <br/>
                    tahjharris00@gmail.com
                </div>
            </div>
            <div className = "profiles">
                <h1>Profiles</h1>
                <div>
                    <a href="">Github Account</a>
                    <br />
                    <a href="">LinkedIn Account</a>
                </div>
            </div>
        </div>
    )
}

export default footer;