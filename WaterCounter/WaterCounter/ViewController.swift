//
//  ViewController.swift
//  WaterCounter
//
//  Created by Josue Quiñones on 10/13/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterView: CounterView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addActionButton(_ sender: Any) {
        counterView.counter += 1
    }
    @IBAction func lessActionButton(_ sender: Any) {
        if counterView.counter > 0{
        counterView.counter -= 1
        }
    }
    
}

