import { RECEIVE_CURRENT_USER, LOGOUT_CURRENT_USER } from "../actions/session_actions";

const sessionReducer = (oldState = {id: null}, action) => {
    Object.freeze(oldState)

    switch (action.type) {

        case LOGOUT_CURRENT_USER:
            return { id: null }
            
        case RECEIVE_CURRENT_USER:
            return Object.assign({}, {id: action.user.id})
        
        default:
            return oldState;
    }
}

export default sessionReducer;