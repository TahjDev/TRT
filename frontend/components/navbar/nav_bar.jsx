import React from "react"

import { Link } from "react-router-dom"

class NavBar extends React.Component {
    constructor(props) {
        super(props)
        
    }

    display() {
      return (  this.props.currentUser ? (
            <div>
              <Link to="/splash"> <button onClick={this.props.logout}>Log Out</button></Link> 
            </div>
        ) : (
                <div>
                    <Link to="/splash" >Sign Up</Link>
                </div>

            )
      )
    }

    clearError() {

            setTimeout(this.props.removeError, 5000)
        
    }

    errors() {
     return  this.props.errors.map( (error, idx) => {
            return ( 
                 <li key={idx}>{error}</li> 
                )
        })
        
    }


    
    render()  {

        this.props.errors ? this.clearError() : null
       return (
       <div>
            <div>{ this.props.errors ?
                     <ul>
                    {this.errors()}
                    </ul>
                         : null 
                }
            </div>
            {this.display()}
        </div>

       ) 
    }
    


}

export default NavBar
