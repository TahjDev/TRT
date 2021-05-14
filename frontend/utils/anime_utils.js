export const fetchAnimes =() => {
    return (
        $.ajax({
            url: "/api/animes" ,
            method: "GET"
        })
    )
}

export const fetchAnime =(id) => {
    return (
        $.ajax({
            url: `/api/animes/${id}` ,
            method: "GET"
        })
    )
}