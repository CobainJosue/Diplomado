//
//  VegettaView.swift
//  AutoLayoutExample
//
//  Created by Josue Quiñones on 9/28/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import UIKit

class VegettaView: UIView {

    let imageView: UIImageView = {
        let iv = UIImageView(frame: .zero)
        iv.image = UIImage(named: "vegetta")!
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAutoLayout()
    }
    
    //Para determinar si se va a inicializar desde un storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAutoLayout()
    }
    
    func setupAutoLayout() {
        backgroundColor = UIColor(named: "IntenseRed")!
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.heightAnchor.constraint(equalTo: self.heightAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        
       // imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    }
    
}
