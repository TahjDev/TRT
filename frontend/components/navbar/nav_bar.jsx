import React from "react"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faYoutubeSquare, faSearch, faSortDown} from '@fortawesome/free-solid-svg-icons'
import { Link } from "react-router-dom"

class NavBar extends React.Component {
    constructor(props) {
        super(props)
        
    }

    // display() {
    //   return (  this.props.currentUser ? (
    //         <div>
    //           <Link to="/splash"> <button onClick={this.props.logout}>Log Out</button></Link> 
    //         </div>
    //     ) : (
    //             <div>
    //                 <Link to="/splash" >Sign Up</Link>
    //             </div>

    //         )
    //   )
    // }

    display(){
        return(
            <div className="nav-bar">
                <button></button>


                <Link>
                <div className="logo">
                    <img src={window.logo} alt=""/> 
                    <h1>TRT</h1>
                </div>
                </Link>
                
               
                <div className="right-side">
                    <Link className="nav-bar-watchlist-button" to="/watchlist">
                        <div>
                            <img src={window.watchlist_icon} alt="" />
                        </div>
                    </Link>
                    <div className="nav-bar-search-button" >
                        <FontAwesomeIcon icon={faSearch}/>
                    </div>

                    <div className="nav-bar-profile-button">
                        <img src={window.prof_icon} alt=""/>
                        <FontAwesomeIcon icon={faSortDown} />
                    </div>
                </div>
                
            </div >
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
            <div className="errors">{ this.props.errors ?
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
