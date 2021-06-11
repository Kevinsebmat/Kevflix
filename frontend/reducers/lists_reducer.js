import { RECEIVE_PROFILE_LIST, ADD_MOVIE_TO_LIST, CREATE_LIST, REMOVE_MOVIE_FROM_LIST } from "../actions/list_actions";

const listsReducer = (oldState = {}, action) => {
    Object.freeze(oldState);

    switch (action.type) {
        case CREATE_LIST:
            return oldState;
       
        case ADD_MOVIE_TO_LIST:
            return Object.assign({}, action.updatedList)

             case RECEIVE_PROFILE_LIST:
            return Object.assign({}, action.list)

        case REMOVE_MOVIE_FROM_LIST:
            return Object.assign({}, action.updatedList)
        default:
            return oldState;
    }
}

export default listsReducer;