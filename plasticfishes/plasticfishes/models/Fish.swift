//
//  Fish.swift
//  plasticfishes
//
//  Created by Josue Quiñones on 9/14/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import Foundation

struct Fish: Decodable {
    let id: String
    let name: String
    let text: String
    let apiUrl: String
    let webUrl: String
    let imageUrl: String
    
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case text
        case apiUrl = "api_url"
        case webUrl = "web_url"
        case imageUrl = "image_url"
    }
    
    var apiURL: URL? {
       return URL(string: apiUrl)
    }
    
    var webURL: URL? {
        return URL(string: webUrl)
    }
    
    var imageURL: URL? {
        return URL(string: imageUrl)
    }
    
    var imageData: Data? {
        guard let url = imageURL else {return nil}
        do {
            return try Data(contentsOf: url)
        } catch {
            return nil
        }
    }
    
}
