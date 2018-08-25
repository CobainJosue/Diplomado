//
//  ViewController.swift
//  Login
//
//  Created by Josue on 24/08/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        if usernameTextField.text == "josue" && passwordTextField.text == "123" {
            
                performSegue(withIdentifier: "Success", sender: usernameTextField.text)
            
        }
        else {
            performSegue(withIdentifier: "Failure", sender: nil)
        }
        
        
    }
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Success" {
            if let infoViewController = segue.destination as? SuccessViewController {
                
            }
        }
    }
    
    
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     if segue.identifier == "ShowColor" {
     if let colorViewController = segue.destinationViewController as? ColorViewController {
     colorViewController.color = sender as? UIColor
     }
     }
     }
 */
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

