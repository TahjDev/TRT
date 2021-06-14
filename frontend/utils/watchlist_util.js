export const postWatchlist = (watchlist) => {
    return $.ajax({
        url: "/api/watchlists",
        method: "POST",
        data: { watchlist }
    })
}
export const deleteWatchlist = (watchlist_id) => {
    return $.ajax({
        url: `/api/watchlists/${watchlist_id}`,
        method: 'DELETE'
    })
}