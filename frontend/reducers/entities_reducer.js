import { combineReducers } from "redux";
import usersReducer from "./users_reducer";
import profilesReducer from "./profiles_reducer";
import activeProfileReducer from "./active_profile_reducer";
import listsReducer from "./lists_reducer";
import genresReducer from "./genres_reducer";



const entitiesReducer = combineReducers({

    genres: genresReducer,

    users: usersReducer,
    activeProfile: activeProfileReducer,
    profiles: profilesReducer,

    list: listsReducer
});

export default entitiesReducer;