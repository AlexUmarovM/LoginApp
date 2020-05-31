//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Александр Умаров on 29.05.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    @IBOutlet var logOutButton: UIButton!
    
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
        logOutButton.layer.cornerRadius = 10
        
    }
    @IBAction func LogOutUser() {
        dismiss(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
