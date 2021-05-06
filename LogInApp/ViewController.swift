//
//  ViewController.swift
//  LogInApp
//
//  Created by Valerii D on 29.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextfield: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logInAction(_ sender: UIButton) {
        if userNameTextfield.text == "User" && passwordTextField.text == "Password" {
            performSegue(withIdentifier: "nextView", sender: nil)
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotUserNameAction() {
        showAlert(title: "Oops!", message: "Your name is User 😉")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(title: "Oops!", message: "Your password is Password ☺️")
    }
    
}

extension ViewController {
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
       
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
              
        present(alertController, animated: true)
    }
    
    
    
    
    
    
}
