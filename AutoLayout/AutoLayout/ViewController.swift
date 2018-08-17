//
//  ViewController.swift
//  AutoLayout
//
//  Created by Josue on 11/08/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.brown
     //   texto.translatesAutoresizingMaskIntoConstraints = false
       // texto.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
       // texto.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

