//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Josue Quiñones on 9/28/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import UIKit

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
