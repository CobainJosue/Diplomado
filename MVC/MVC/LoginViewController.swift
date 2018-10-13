//
//  LoginViewController.swift
//  MVC
//
//  Created by Josue Quiñones on 10/12/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        let loginView = Bundle.main.loadNibNamed("LoginCustomView", owner: nil, options: nil)! [0] as! LoginView
        view = loginView
    }

}
