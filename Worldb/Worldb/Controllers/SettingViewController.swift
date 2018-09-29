//
//  SettingViewController.swift
//  Worldb
//
//  Created by Josue on 29/09/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    @IBAction func changeTheme(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "nightTheme")
        loadTheme()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func loadTheme() {
        if UserDefaults.standard.bool(forKey: "nightTheme") {
            self.view.backgroundColor = UIColor.darkGray
            self.navigationController?.navigationBar.tintColor = UIColor.darkYellow
        } else {
            self.view.backgroundColor = UIColor.softGray
            self.navigationController?.navigationBar.tintColor = UIColor.softBeige
            
        }
    }
    
}
