//
//  ViewController.swift
//  LoginApp
//
//  Created by Александр Умаров on 29.05.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var userPasswordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
   let userData = UserData(userName: "Alexey", userPassword: "123")
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "LogIn" {
                let tabBarController = segue.destination as! UITabBarController
                let welcomeVC = tabBarController.viewControllers?.first as! WelcomeViewController
                welcomeVC.userName = userNameTextField.text
            }
    }
   
    @IBAction func logInUser(_ sender: UIButton) {
        let userName = userNameTextField.text
        let password = userPasswordTextField.text
        if (userName == userData.userName && password == userData.userPassword) {
            performSegue(withIdentifier: "LogIn", sender: nil)
            userPasswordTextField.text = nil
            userNameTextField.text = nil
        } else {
                let alert = UIAlertController(title: "Invalid login or password", message: "Please enter correct login or password", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            userPasswordTextField.text = nil
        }
    }
    
    @IBAction func nameAlert() {
        let alert = UIAlertController(title: "Oops!", message: "Your user name is: \(userData.userName) 😜", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func passwordAlert() {
        let alert = UIAlertController(title: "Oops!", message: "Your password is: \(userData.userPassword) 👋", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

