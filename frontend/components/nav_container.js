import { connect } from "react-redux"
import Nav from "./nav";
import { setActiveProfile } from "../actions/profile_actions";


import { login, logout } from "../actions/session_actions";

import { getProfileList } from "../actions/list_actions";

const mapStateToProps = state => ({
    currentUserId: state.session.id,
    activeProfile: state.entities.activeProfile.profile,

        userProfiles: state.entities.profiles,

})




const mapDispatchToProps = dispatch => ({

        logoutUser: () => dispatch(logout()),

    loginUser: user => dispatch(login(user)),
    setActiveProfile: profile => dispatch(setActiveProfile(profile)),
    getProfileList: listId => dispatch(getProfileList(listId))
})

export default connect(mapStateToProps, mapDispatchToProps)(Nav);