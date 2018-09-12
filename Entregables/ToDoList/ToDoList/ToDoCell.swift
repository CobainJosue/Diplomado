//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Josue Quiñones on 10/09/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class ToDoCell: UITableViewCell {
    
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    var delegate: ToDoCellDelegate?
    
    @IBAction func completeButtonTapped() {
        delegate?.checkmarckTapped(sender: self)
    }
    
    
    
    
}

@objc protocol ToDoCellDelegate: class {
    func checkmarckTapped(sender: ToDoCell)
}
