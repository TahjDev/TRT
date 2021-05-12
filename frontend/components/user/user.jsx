import React from "react"


const User = (props) => {

    if (!props.user) { 
        props.history.push("/")
        return null
    }
    return (
        <h1> {props.user.username} </h1>
    )
}

export default User;