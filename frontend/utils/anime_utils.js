export const fetchAnimes =() => {
    debugger
    return (
        $.ajax({
            url: "/api/animes" ,
            method: "GET"
        })
    )
}

export const fetchAnime = (id) => {
    debugger
    return (
        $.ajax({
            url: `/api/animes/${id}` ,
            method: "GET"
        })
    )
}

export const fetchEpisode = (id) => {
    debugger
    return (
        $.ajax({
            url: `/api/episodes/${id}`,
            method: "GET"
        })
    )
}