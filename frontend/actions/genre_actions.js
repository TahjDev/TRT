export const RECEIVE_GENRE = "RECEIVE_GENRE"
export const REMOVE_GENRE = "RECEIVE_GENRE"

export const recieveGenre = (genre) => {
    return {
        type: RECEIVE_GENRE,
        genre
    }
}
export const removeGenre = (genre) => {
    return {
        type: REMOVE_GENRE,
        genre
    }
}