import React from "react";
import NavContainer from "../nav_container";

class Splash extends React.Component {

    constructor(props) {
        super(props);

        this.state = {
            email: "",
            password: ""
        };

        this.updateEmail = this.updateEmail.bind(this);
        this.updatePassword = this.updatePassword.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    componentWillUnmount() {
        if (this.props.errors.session[0]) this.props.clearErrors();
    }





       updatePassword(event) {
        this.setState({
            password: event.target.value
        })
    }
    updateEmail(event) {
        this.setState({
            email: event.target.value
        })
    }

 

    handleSubmit(e) {
        e.preventDefault();

        const userInfo = Object.assign({}, this.state);
        this.props.signupUser(userInfo)
    }

    parseErrors(errors) {
        let emailErrors;
        let passwordErrors;

        if (errors.session[0]) {
            let emailErrs = [];
            let passwordErrs = [];

            errors.session.forEach(error => {
                let words = error.split(" ");
                let emailError = false;
                
                for (let word of words) {
                    if (word === "Email") emailError = true;
                }

                emailError ? emailErrs.push(error) : passwordErrs.push(error);
            })

            if (emailErrs[0]) {
                emailErrors = emailErrs.map(err => (<div className="signup-errors" key={err.length}>{err}</div>))
            } 

            if (passwordErrs[0]) {
                passwordErrors = passwordErrs.map(err => (<div className="signup-errors" key={err.length} >{err}</div>))
            }

        }

        if (emailErrors || passwordErrors) {

            return {
                emailErrors: !!emailErrors,
                passwordErrors: !!passwordErrors,
                errorMessages: (
                    <div className="errors-container">
                        <div className="email-errors">
                            {emailErrors}
                        </div>
    
                        <div className="password-errors">
                            {passwordErrors}
                        </div>
    
                    </div>
                )
            }
             
        } else {
            return {
                emailErrors: !!emailErrors,
                passwordErrors: !!passwordErrors,
                errorMessages: undefined
            }
        }
    }

    render() {

        let { errorMessages, emailErrors, passwordErrors } = this.parseErrors(this.props.errors);

        if (emailErrors) emailErrors = "error-border";
        if (passwordErrors) passwordErrors = "error-border";

        return (


            <main className="splash-main">
                <NavContainer history={this.props.history} page="splash" />
                <section className="landing">
                    <div className="splash-main-content">
                        <div className="slogan-container">
                        <h2 className="slogan-big">Unlimited movies, TV</h2>
                         <h2 className="slogan-big">shows, and more.</h2>
                         <h3 className="slogan-small">Watch anywhere. Cancel anytime.</h3>
                        </div>
                        <div className="form-container">
                            <form className="signup-form" onSubmit={this.handleSubmit}>
                                <div className="black-box">
                     <p className="signup-info">Ready to watch? Enter your email and password to create or restart your membership.</p>
                                  <div className="signup-inputs-container">
                                     <input className={`signup-input ${emailErrors}`} type="text" placeholder="Email Address" value={this.state.email} onChange={this.updateEmail} />
                                  <input className={`signup-input ${passwordErrors}`} type="password" placeholder="Password" value={this.state.password} onChange={this.updatePassword} />
                                    </div>
                                {errorMessages}
                                </div>


                                <input className="signup-button" type="submit" value="Sign Up" />
                            </form>
                        </div>
                    </div>     
                </section>

               
            </main>
        )
    }

}

export default Splash;