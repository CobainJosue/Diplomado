//
//  FormView.swift
//  plasticfishes
//
//  Created by Josue Quiñones on 9/28/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import UIKit

class FormView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    //Para determinar si se va a inicializar desde un storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    
    func setupView() {
        backgroundColor = .red
    }

}
