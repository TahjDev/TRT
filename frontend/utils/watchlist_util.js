export const postWatchlist = (watcherId, watchedId) => {
    return $.ajax({
        url: "/api/watchlists",
        method: "POST"
    })
}