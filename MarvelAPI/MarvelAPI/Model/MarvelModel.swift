//
//  MarvelModel.swift
//  MarvelAPI
//
//  Created by Josue on 06/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

struct Info: Codable {
    let name: String
}

struct Characters: Codable {
    let characters: [Info]
}
