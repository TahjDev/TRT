import React from "react"

class Login extends React.Component {
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
        this.props.loginUser(this.state)
            .then(() => this.props.history.push("/user"))
        this.setState({ 
            username: "",
            email: "",
            password: "" })

    }

    render() {
        return (
            <div>
                <h1>Log In</h1>
                { this.props.otherForm}
                <form  >
                    <label htmlFor="username">Username:
                        <input onChange={this.handleInput("username")} type="text" value={this.state.username} />
                    </label>
                    <label htmlFor="email">Email:
                        <input onChange={this.handleInput("email")} type="text" value={this.state.email} />
                    </label>
                    <label htmlFor="">Password:
                        <input onChange={this.handleInput("password")} type="password" value={this.state.password} />
                    </label>
                    <button onClick={this.handleSubmit}>Log In</button>
                </form>
            </div>
        )
    }
}

export default Login;