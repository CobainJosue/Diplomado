//
//  FinalViewController.swift
//  RockPaperScisors
//
//  Created by Josue Quiñones on 12/08/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var iaLabel: UILabel!
    
    var result: String?
    var player: String?
    var ia: String?
    
    
    override func viewWillAppear(_ animated: Bool) {
        resultLabel.text = result
        playerLabel.text = player
        iaLabel.text = ia
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
    }
    
    
    @IBAction func playAgain(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
