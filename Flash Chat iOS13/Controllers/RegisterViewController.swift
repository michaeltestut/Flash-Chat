//
//  RegisterViewController.swift
//  Flash Chat iOS13
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor=UIColor(named: K.BrandColors.blue)
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email=emailTextfield.text, let password=passwordTextfield.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    self.errorLabel.text=e.localizedDescription
                }
                else{
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
    
}
