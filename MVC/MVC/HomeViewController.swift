//
//  HomeViewController.swift
//  MVC
//
//  Created by Josue Quiñones on 10/12/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customView = view as? HomeView
        customView?.setFunnyColor()
        
        
       // self.view.addSubview(loginVC.view)
        
//        let loginView = Bundle.main.loadNibNamed("LoginView", owner: nil, options: nil)! [0] as! LoginView
//        self.view.addSubview(loginView)
        
       // view.backgroundColor = UIColor.purple

        if User.hasSession {
            performSegue(withIdentifier: "showMusic", sender: self)
        } else {
            performSegue(withIdentifier: "showLogin", sender: self)
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //self.present(loginVC, animated: true, completion: nil)
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
