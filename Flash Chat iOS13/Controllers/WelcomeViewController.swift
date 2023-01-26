//
//  RegisterViewController.swift
//  Flash Chat iOS13
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden=true
        }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden=false
        navigationController?.navigationBar.barTintColor=UIColor(named: K.BrandColors.blue)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text=K.appName
       
    }
    

}
