import React from "react"
import AnimeIndexContainer from "../anime/animes_index_container"

class Signup extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            username: "",
            email: "",
            password: ""
        };
        this.handleSubmit = this.handleSubmit.bind(this)

    }

    handleInput(type) {
        return (e) => {
            this.setState( { [type]: e.target.value })
        }
    }

    handleSubmit(e){
       
        e.preventDefault()
        this.props.createNewUser(this.state)
        .then(() => {
            this.props.history.push("/view")
        })
        this.setState({
            username: "",
            email: "",
            password: ""
        })

    }

    render() {
        return (
            <div className="splash-page">
                <div className="home-container">
                    <div className="home-details">
                    <h2>WATCH <b>THE BEST</b> STUFF EVER</h2>
                        <p >The best in anime, gaming, tech, cartoons, + more! 
                            Create a free account to keep watching across our apps, 
                            build a watchlist, or go premium to sync & watch videos offline</p>
                    </div>
                    <div className="signup-form-box">
                        <form >
                        <h2>CREATE MY FREE ACCOUNT</h2>
                            <label className="label" htmlFor="username">Username
                                <input placeholder="" onChange={this.handleInput("username")} type="text" value={this.state.username}/>
                            </label>
                            <label htmlFor="email">Email
                                <input placeholder="" onChange={this.handleInput("email")} type="text" value={this.state.email}/>
                            </label>
                            <label htmlFor="">Password
                                <input placeholder="" onChange={this.handleInput("password")} type="password" value={this.state.password}/>
                            </label>
                            <button className="yellow-button" onClick={this.handleSubmit}>CREATE ACCOUNT</button>
                            <div>
                            <p>Existing user? {this.props.otherForm}</p>
                            </div>
                        </form>

                    </div>
                     <p id="privacy">By creating an account you’re agreeing to our Terms & Privacy Policy,
                        and you confirm that you are at least 16 years of age.
                    </p>
                </div>
                <div>
                    <div >
                        <AnimeIndexContainer 
                         />
                    </div>
                </div>
            </div>
        )
    }
}

export default Signup;