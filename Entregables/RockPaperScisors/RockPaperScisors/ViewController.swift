//
//  ViewController.swift
//  RockPaperScisors
//
//  Created by Josue on 11/08/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func play(_ sender: UIButton) {
        let tag = sender.tag
        let player = getSign(tag)
        let ia = getSign(GKRandomDistribution(lowestValue: 0, highestValue: 2).nextInt())
        
        let info = (player,ia)
        
        performSegue(withIdentifier: "ChoiceSelected", sender: info)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! FinalViewController
        let (player,ia) = sender as! (Sign,Sign)
        destination.result = "\(player.compare(ia))"
        destination.player = player.emoji
        destination.ia = ia.emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

