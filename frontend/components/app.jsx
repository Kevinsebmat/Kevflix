import React from "react";
import { Route, Switch } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../util/route_util";

import LoginFormContainer from "./auth/login_form_container";

import SplashContainer from "./auth/splash_container";

import Watch from "./app/watch";


import MyListContainer from "./app/my_list_container";
import BrowseContainer from "./app/browse_container";
import ProfilesContainer from "./app/profiles_container";




// AuthRoutes = non-logged in users
// protectedRoutes = logged-in users.




const App = () => (

    <main id="app-main">
    
            <AuthRoute exact path="/" component={SplashContainer} />
        <AuthRoute exact path="/login" component={LoginFormContainer} />
        <Switch>
            <ProtectedRoute path="/profiles" component={ProfilesContainer} />
            <ProtectedRoute exact path="/browse/:id/watch" component={Watch} />
            <ProtectedRoute path="/browse" component={BrowseContainer} />
        </Switch>
        <ProtectedRoute path="/my-list" component={MyListContainer} />
    </main>
)

export default App;