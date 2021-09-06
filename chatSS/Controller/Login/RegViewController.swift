//
//  RegViewController.swift
//  chatSS
//
//  Created by Юханов Сергей Сергеевич on 12.08.2021.
//

import UIKit
import Firebase

class RegViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!


    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    


    @IBAction func registerButton(_ sender: Any) {
       
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { authResult, error in
            print(authResult)
        }
    }
    
}
