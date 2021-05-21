import React from "react"
import { faChevronRight, faChevronLeft } from '@fortawesome/free-solid-svg-icons'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

class Login extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            username: "",
            email: "",
            password: ""
        };
        this.handleSubmit = this.handleSubmit.bind(this)
        this.handleDemoUser = this.handleDemoUser.bind(this)

    }

    handleInput(type) {
        return (e) => {
            this.setState({ [type]: e.target.value })
        }
    }

    handleSubmit(e) {
        
        e.preventDefault()
        this.props.loginUser(this.state)
            .then(() => {
                this.props.history.push("/view")
                this.props.closeModal()
            })
        this.setState({ 
            username: "",
            email: "",
            password: "" })

    }

    handleDemoUser(e){
        e.preventDefault()
     const object = {
            email: "coolperson@you.com",
            username: "CoolPerson",
            password: "coolguy12"
                 }
        this.props.loginUser(object)
                 .then(() => { this.props.history.push("/view")})
        this.props.closeModal()
    }

  

    render() {
        return (
            <div className="signup-form-box-modal-left">
                
                <form>
                    <h1>Sign In</h1>
                    <label htmlFor="email">Email:
                        <input onChange={this.handleInput("email")} type="text" value={this.state.email} />
                    </label>
                    <label htmlFor="">Password:
                        <input onChange={this.handleInput("password")} type="password" value={this.state.password} />
                    </label>
                    <div>
                        <button className="yellow-button" onClick={this.handleSubmit}>Lets Go</button>
                        <button className="yellow-button" onClick={this.handleDemoUser}>Demo User</button>
                    </div>
                </form>
                <div>
                    <p>
                        Create an account to customize your VRV experience.
                        </p>
                    <div className="button">{this.props.otherForm} <FontAwesomeIcon icon={faChevronRight} /> </div>
                </div>
            </div>
        )
    }
}

export default Login;