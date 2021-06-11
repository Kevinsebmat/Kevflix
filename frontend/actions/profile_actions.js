import * as ProfileAPIUtil from "../util/profiles_api_util";

export const RECEIVE_USER_PROFILES = "RECEIVE_USER_PROFILES";
export const SET_ACTIVE_PROFILE = "SET_ACTIVE_PROFILE";
export const CREATE_PROFILE = "CREATE_PROFILE";
export const DELETE_PROFILE = "DELETE PROFILE"

const activeProfileAction = profile => {
    return {
        type: SET_ACTIVE_PROFILE,
        profile
    }
}



const receiveUserProfiles = user => {
    return {
        type: RECEIVE_USER_PROFILES,
        profiles: user.profiles
    }
}

const createProfileAction = updatedProfiles => {
    return {
        type: CREATE_PROFILE,
        updatedProfiles
    }
}

const deleteProfileAction = updatedProfiles => {
    return {
        type: DELETE_PROFILE,
        updatedProfiles
    }
}




export const getUserProfiles = id => dispatch => ProfileAPIUtil.fetchUserProfiles(id)
    .then(profiles => dispatch(receiveUserProfiles(profiles)))

export const deleteProfile = profileId => dispatch => ProfileAPIUtil.deleteUserProfile(profileId)
    .then(updatedProfiles => dispatch(deleteProfileAction(updatedProfiles)))

export const setActiveProfile = profile => dispatch => dispatch(activeProfileAction(profile))

export const createProfile = profile => dispatch => ProfileAPIUtil.createProfile(profile)
    .then(updatedProfiles => dispatch(createProfileAction(updatedProfiles)))
