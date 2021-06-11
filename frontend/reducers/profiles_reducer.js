import { CREATE_LIST } from "../actions/list_actions";


import { CREATE_PROFILE, RECEIVE_USER_PROFILES, DELETE_PROFILE } from "../actions/profile_actions";



const profilesReducer = (oldState = {}, action) => {
    Object.freeze(oldState);

    switch (action.type) {
        
        case RECEIVE_USER_PROFILES:
            return Object.assign({}, action.profiles);

        case CREATE_PROFILE:
            return Object.assign({}, action.updatedProfiles.userProfiles);
        case DELETE_PROFILE:
            return Object.assign({}, action.updatedProfiles.userProfiles);
        case CREATE_LIST:
            return Object.assign({}, action.updatedProfiles);
        default:
            return oldState;
    }
}

export default profilesReducer;