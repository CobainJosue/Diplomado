//
//  MenuItem.swift
//  Restaurant
//
//  Created by Josue Quiñones on 9/20/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import Foundation

struct MenuItem: Codable {
    var id: Int
    var name: String
    var description: String
    var price: Double
    var category: String
    var imageURL: URL
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case price
        case category
        case imageURL = "image_url"
    }
}

struct MenuItems {
    let items: [MenuItem]
}
