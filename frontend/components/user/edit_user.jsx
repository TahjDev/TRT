import React from "react"


class EditUser extends React.Component  {
    constructor(props) {
        super(props) 
        this.state = {
            username: props.user.username,
            photoFile: null
        }
        
        this.handleInput = this.handleInput.bind(this)
        this.handleFile = this.handleFile.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    componentDidMount(){
        this.props.fetchUser(this.props.user.id)
    }

    handleInput(e) {
        this.setState( {username: e.currentTarget.value } );
    }

    handleFile(e) {
        this.setState({photoFile: e.currentTarget.files[0]});
    }

    handleSubmit(e) {
        
        e.preventDefault();
        const formData = new FormData();
     
        formData.append('user[username]', this.state.username)
        formData.append('user[photo]', this.state.photoFile)
        const newUser = {
            id: this.props.user.id,
            formData
        }
        
        this.props.updateUser(newUser)
    }


    render() {
            
       return ( 
            <div>
               <img src={this.props.user.photoUrl} alt="" />
                 <form >
                    <input onChange={this.handleInput} type="text" value={this.state.username}/>
                    <input type="file" onChange={this.handleFile } value=""/>
                    <button onClick={this.handleSubmit}>Update Info</button>
                </form>
            </div>
       )
    }
}

export default EditUser;