import React from "react"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faGithub } from '@fortawesome/free-solid-svg-icons'

const footer = () => {
    return (
        <div className="footer"> 
            <div className="other-skills" >
                <h1>Skills</h1>
                React
                <br/>
                Ruby on Rails
                <br />
                Ruby
                <br />
                Javascript
                <br />
                WebSockets
                <br />
                AWS
                <br />
                CSS
                <br />
                SCSS
                <br />
                HTML
                <br />
                HTML-5
            </div>
            
            <div className="other-projects" >
               <h1>Other Projects</h1>
               <a href="http://weeasel.herokuapp.com/">Weeasel</a>
               <br/>
               <a href="">Blessed Rain</a>
            </div>
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
                    <a href=""><i class="fab fa-github"></i> Github </a>
                    <br />
                    <a href="">LinkedIn Account</a>
                </div>
            </div>
        </div>
    )
}

export default footer;