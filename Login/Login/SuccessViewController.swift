//
//  SuccessViewController.swift
//  Login
//
//  Created by Josue on 24/08/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class SuccessViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    var cadena: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameLabel.text = ""

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
