export const fetchAnimes =() => {
    return (
        $.ajax({
            url: "/api/animes" ,
            method: "GET"
        })
    )
}

export const fetchAnime = (id) => {
    return (
        $.ajax({
            url: `/api/animes/${id}` ,
            method: "GET"
        })
    )
}

export const fetchEpisode = (id) => {
    return (
        $.ajax({
            url: `/api/episodes/${id}`,
            method: "GET"
        })
    )
}