import { connect } from "react-redux";
import Profiles from "./profiles";
import { createProfile, getUserProfiles, deleteProfile, setActiveProfile } from "../../actions/profile_actions";
import { createList, getProfileList } from "../../actions/list_actions";


const msp = (state, ownProps) => ({
    userProfiles: state.entities.profiles,
    currentUserId: state.session.id,
    history: ownProps.history
})

const mdp = dispatch => ({
        getUserProfiles: id => dispatch(getUserProfiles(id)),
        deleteProfile: profileId => dispatch(deleteProfile(profileId)),
        createProfile: profileData => dispatch(createProfile(profileData)),

        createList: profileId => dispatch(createList(profileId)),
        setActiveProfile: profile => dispatch(setActiveProfile(profile)),

        getProfileList: listId => dispatch(getProfileList(listId))
})

export default connect(msp, mdp)(Profiles);