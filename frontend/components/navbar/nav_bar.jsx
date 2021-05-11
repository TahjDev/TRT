import React from "react"

import { Link } from "react-router-dom"

class NavBar extends React.Component {
    constructor(props) {
        super(props)
        
       
    }

    display() {
      return (  this.props.currentUser ? (
            <div>
                <button onClick={this.props.logout}>Log Out</button>
            </div>
        ) : (
                <div>
                    <Link to="/login" >Log In</Link>
                    <Link to="/" >Sign Up</Link>
                </div>

            )
      )
    }

    clearError() {

            setTimeout(this.props.removeError, 5000)
        
    }


    
    render()  {

        this.props.error ? this.clearError() : null
       return (
       <div>
            <div>{ this.props.error ? this.props.error : null }</div>
            {this.display()}
        </div>

       ) 
    }
    


}

export default NavBar
