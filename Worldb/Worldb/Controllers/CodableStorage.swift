//
//  CodableStorage.swift
//  Worldb
//
//  Created by Josue on 29/09/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import Foundation

enum CodableStorage {
    case persistent(filename: String)
    case cache
    
    func save(data: Codable) {
//        switch self {
//        case .persistent(let filename):
//
//        case .cache:
//
//        default:
//            print("Unviable storage")
//        }
    }
}
