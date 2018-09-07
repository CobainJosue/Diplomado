//
//  ViewController.swift
//  Calculator
//
//  Created by Josue on 18/08/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        
        if sender.tag == 10 {
            result.text = "."
        } else {
        result.text = String(sender.tag)
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

