import errorsReducer from "./errors_reducer";

import { combineReducers } from "redux";
import entitiesReducer from "./entities_reducer";
import sessionReducer from "./session_reducer";

const rootReducer = combineReducers({
        session: sessionReducer,

    entities: entitiesReducer,
    errors: errorsReducer
})

export default rootReducer