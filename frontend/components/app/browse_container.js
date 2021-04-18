import { connect } from "react-redux"
import Browse from "./browse";

import { getGenres } from "../../actions/genre_actions";
import { setActiveProfile, getUserProfiles } from "../../actions/profile_actions";
import { getProfileList } from "../../actions/list_actions";

const msp = (state, ownProps) => ({
    genres: Object.entries(state.entities.genres),
    history: ownProps.history,
     currentUserId: state.session.id,

    userProfiles: state.entities.profiles,
        activeProfile: state.entities.activeProfile.profile,

    profileList: state.entities.list  
})

const mdp = dispatch => ({
    getGenres: () => dispatch(getGenres()),
    getUserProfiles: id => dispatch(getUserProfiles(id)),
    setActiveProfile: profile => dispatch(setActiveProfile(profile)),
    getProfileList: listId => dispatch(getProfileList(listId))  
})

export default connect(msp, mdp)(Browse);