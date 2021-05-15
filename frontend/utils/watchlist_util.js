export const postWatchlist = (watcher_id, watchlist_id) => {
    return $.ajax({
        url: "/api/watchlists",
        method: "POST"
    })
}