//
//  AuthViewController.swift
//  chatSS
//
//  Created by Юханов Сергей Сергеевич on 12.08.2021.
//

import UIKit
import Firebase

class AuthViewController: UIViewController {
    
    var delegate: LoginViewControllerDelegate!

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
    }
    

    @IBAction func registerBtnTapped(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let RegViewController = self.storyboard?.instantiateViewController(withIdentifier: "RegViewController") as! RegViewController
        self.present(RegViewController, animated: true, completion: nil)
    }
    
    @IBAction func enterButton(_ sender: Any) {
    
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { [weak self] authResult, error in
          guard let strongSelf = self else { return }
            if authResult != nil {
                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                let appViewController = self?.storyboard?.instantiateViewController(withIdentifier: "AppViewController") as! AppViewController
                self?.present(appViewController, animated: true, completion: nil)
                //UIApplication.shared.windows.first { $0.isKeyWindow }
                //self?.performSegue(withIdentifier: "goToAppVC", sender: nil)
                
                //need to add push to AppVC
                print("OK")
            } else {
                print(error)
            }
          
        }
    }
    
    @IBAction func closeBtnTapped(_ sender: Any) {
        delegate.closeVC()
    }
}
