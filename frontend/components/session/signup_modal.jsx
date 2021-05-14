import React from "react"


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
                <div className="signup-form-box">

                    <form >
                        <h2>CREATE MY FREE ACCOUNT</h2>
                        <label htmlFor="username">Username:
                                <input onChange={this.handleInput("username")} type="text" value={this.state.username} />
                        </label>
                        <label htmlFor="email">Email:
                                <input onChange={this.handleInput("email")} type="text" value={this.state.email} />
                        </label>
                        <label htmlFor="">Password:
                                <input onChange={this.handleInput("password")} type="password" value={this.state.password} />
                        </label>
                        <button className="yellow-button" onClick={this.handleSubmit}>CREATE ACCOUNT</button>
                        <p>Existing user? {this.props.otherForm}</p>
                    </form>

                </div>
        )
    }
}

export default SignupModal;