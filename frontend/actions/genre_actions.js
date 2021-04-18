import * as GenresAPIUtil from "../util/genres_api_util";

export const RECEIVE_GENRES = "RECEIVE_GENRES";

const receiveGenres = genres => ({
        type: RECEIVE_GENRES,
        genres
})

export const getGenres = () => dispatch => GenresAPIUtil.fetchGenres()
    .then(genres => dispatch(receiveGenres(genres)))