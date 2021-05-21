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

    displayAvatar(){
      return this.props.user.photoUrl ? this.props.user.photoUrl : window.avatar 
    }


    render() {
            
       return ( 
            <div className="edit-profile-wrapper">
                 <form className="edit-form" >
                     <div className="edit-user">
                        <img className="avatar-img" src={this.displayAvatar()} alt="" />
                        <input className="input-file" name="file" id="file" type="file" onChange={this.handleFile} />
                            <label htmlFor="file" for="file">CHANGE</label>
                     </div>
                    <div className="input-username-wrapper">
                         <label classname="username-label" htmlFor="username">Username
                         <input className="input-username" onChange={this.handleInput} type="text" value={this.state.username}/>
                        </label>
                        <button className="username-button"onClick={this.handleSubmit}>Update Info</button>
                   </div>

                </form>
            </div>
       )
    }
}

export default EditUser;
