//
//  FishesViewCellTableViewCell.swift
//  plasticfishes
//
//  Created by Josue Quiñones on 9/21/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import UIKit

class FishesViewCellTableViewCell: UITableViewCell {

    @IBOutlet weak var fishImageView: UIImageView!
    @IBOutlet weak var fishTitleLabel: UILabel!
    @IBOutlet weak var fishSubtitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
