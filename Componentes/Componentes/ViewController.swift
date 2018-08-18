//
//  ViewController.swift
//  Componentes
//
//  Created by Josue on 18/08/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pokemon: UIImageView!
    @IBOutlet weak var slider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeImage(_ sender: UISlider) {
        
        if slider.value <= 0.33 {
            pokemon.image = UIImage(named: "indigo")
        } else if slider.value > 0.33 && slider.value <= 0.66 {
            pokemon.image = UIImage(named: "jotho")
        } else {
            pokemon.image = UIImage(named: "hoenn")
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

