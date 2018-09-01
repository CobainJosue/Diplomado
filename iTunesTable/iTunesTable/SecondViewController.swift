//
//  SecondViewController.swift
//  iTunesTable
//
//  Created by Josue on 01/09/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    var fromFirstView: String = ""
    var originImage: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        do{
            let urlImage = URL(string: originImage)
            let dataImage = try Data(contentsOf: urlImage!)
            
            imagen.image = UIImage(data: dataImage)
            
        }catch{
            print(error)
        }
        
        etiqueta.text = fromFirstView
        
        
        print(originImage)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
