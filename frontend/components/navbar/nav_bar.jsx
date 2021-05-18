import React from "react"
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faYoutubeSquare, faSearch, faSortDown} from '@fortawesome/free-solid-svg-icons'
import { Link } from "react-router-dom"

class NavBar extends React.Component {
    constructor(props) {
        super(props)
        
    }

    componentDidMount(){
        debugger
       this.props.currentUser ? this.props.fetchUser(this.props.currentUser.id) :  null
        
    }

    display(){
        let image = [null];
        let modal;
        debugger
        if (this.props.currentUser && this.props.currentUser.photoUrl) {
            image = [
                <img src={this.props.currentUser.photoUrl} />]
            modal = this.props.logout
                debugger
        } else if (this.props.currentUser && !this.props.currentUser.photoUrl){
            image = [<img src={window.avatar} />]
            debugger
            modal = this.props.logout
        }
        else if (this.props.currentUser === null) {
            image = [
                <img src={window.prof_icon} alt="" />
            ]
            modal = this.props.signup;
            debugger
        } 
        debugger
        return(
            <div className="nav-bar">
                <button></button>


                <Link to="/view">
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

                    <div onClick={() => modal()} className="nav-bar-profile-button">
                        {image[0]}
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
