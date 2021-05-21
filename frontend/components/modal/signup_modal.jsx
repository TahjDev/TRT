import React from "react"
import { faChevronLeft } from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

class SignupModal extends React.Component {
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
            this.setState({ [type]: e.target.value })
        }
    }

    handleSubmit(e) {

        e.preventDefault()
        this.props.createNewUser(this.state)
            .then(() => { 
                this.props.history.push("/view")
                this.props.closeModal()
            })
        
        this.setState({
            username: "",
            email: "",
            password: ""
        })

    }

    render() {
        return (
         
            <div className="signup-form-box-modal-right">
                    <div>
                    <p>We all make mistakes If you meant to get to the sign in page. Right this way... 
                    </p>
                    <div className="button"><FontAwesomeIcon icon={faChevronLeft} /> {this.props.otherForm}</div>
                    </div>
                    <form >
                        <h1>CREATE MY FREE ACCOUNT</h1>
                        <label htmlFor="username">Username
                                <input onChange={this.handleInput("username")} type="text" value={this.state.username} />
                            
                        </label>
                        <label htmlFor="email">Email
                                <input onChange={this.handleInput("email")} type="text" value={this.state.email} />
                        </label>
                        <label htmlFor="">Password
                                <input onChange={this.handleInput("password")} type="password" value={this.state.password} />
                        </label>
        
                        <button className="yellow-button" onClick={this.handleSubmit}>CREATE ACCOUNT</button>
                    </form>

                </div>
          
        )
    }
}

export default SignupModal;