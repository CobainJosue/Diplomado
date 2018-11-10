//
//  ViewController.swift
//  LabTunes
//
//  Created by Josue Quiñones on 11/9/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBAction func loginPressed(_ sender: Any) {
        guard let userName = usernameTF.text else { return }
        guard let password = passwordTF.text else { return }
        
        if User.login(userName: userName, password: password) {
            performSegue(withIdentifier: "loginSuccess", sender: self)
        } else{
            //Alert
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

