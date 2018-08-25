//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Josue on 24/08/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segueSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Cada vez que se va a hacer un cambio de controlador
    //se ejecuta cuando se activa el segue
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }*/
    
    @IBAction func yellowButtonTapped(_ sender: UIButton) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: UIButton) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Para hacer referencia a la vista
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        
    }


}

