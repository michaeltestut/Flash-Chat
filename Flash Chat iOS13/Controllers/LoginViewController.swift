//
//  LoginViewController.swift
//  Flash Chat iOS13
//


import UIKit
import FirebaseCore
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password=passwordTextfield.text{
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e=error{
                    switch e.localizedDescription{
                    case "The password is invalid or the user does not have a password.":
                        self.errorLabel.text="invalid password"
                    case "There is no user record corresponding to this identifier. The user may have been deleted.":
                        self.errorLabel.text="There is no account associated with this email"
                    case "The email address is badly formatted.":
                        self.errorLabel.text="Must provide proper email address"
                    default:
                        self.errorLabel.text="Login error, please try again"
                    }
                }
                else{
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
                
            }
        }
    }
    
}
