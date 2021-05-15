export const postWatchlist = (watchlist) => {
    return $.ajax({
        url: "/api/watchlists",
        method: "POST",
        data: { watchlist }
    })
}