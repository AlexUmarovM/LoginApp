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
    
   let userData = UserData(userName: "Alex", userPassword: "1")
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
    

    
    
    @IBAction func logInUser() {
    }
    
    
    
    @IBAction func nameAlert() {
    }
    
    @IBAction func passwordAlert() {
    }
}

