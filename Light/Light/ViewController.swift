//
//  ViewController.swift
//  Light
//
//  Created by Josue on 17/08/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var state = 0
    var policeState = false
    var timer = Timer()
   // var timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: police)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func light(_ sender: UIButton) {
        if state == 0 {
            view.backgroundColor = UIColor.white
            state = 1
        } else if state == 1 {
            state = 2
            timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(police), userInfo: nil, repeats: true)
            //timer.fire()
        } else {
            timer.invalidate()
            view.backgroundColor = UIColor.black
            state = 0
        }
        
       // sender.backgroundColor = UIColor.green
        
    }
    
    @objc func police() {
        
        if !policeState {
            view.backgroundColor = UIColor.blue
            policeState = true
        } else {
            view.backgroundColor = UIColor.red
            policeState = false
        }
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

