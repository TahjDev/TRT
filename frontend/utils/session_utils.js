export const postUser = user => {
    return (
        $.ajax({
            url: '/api/users',
            method: 'POST',
            data: { user }
        })
    )
}

export const fetchUser = id => {
    return (
        $.ajax({
            url: `/api/users/${id}`,
            method: `GET`
        })
    )
}

export const updateUser = ({id, formData}) => {
    
    return (
        $.ajax({
            url: `/api/users/${id}`,
            method: "PATCH",
            data: formData,
            contentType: false,
            processData: false
        })
    )
}

export const postSession = user => {
    return (
        $.ajax({
            url: "api/session",
            method: "POST",
            data: { user }
        })
        
    )
}

export const deleteSession = user => {
    return (
        $.ajax({
            url: '/api/session',
            method: 'DELETE'
        })
    )
}
