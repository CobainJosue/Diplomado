//
//  FishService.swift
//  plasticfishes
//
//  Created by Josue Quiñones on 9/14/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import Foundation

struct FishService {
    static let shared = FishService()
    let cliente = Client(baseURLComponents: URLComponents(string: "https://plasticfishes.herokuapp.com")!)
    
    let jsonDecoder = JSONDecoder()
    
    func all() -> [Fish] {
        let decoder = JSONDecoder()
        let result = try? decoder.decode([Fish].self, from: DataSource().fishes)
        return result ?? []
    }
    
    func all(_ completion: @escaping ([Fish]) -> Void) {
        cliente.get(path: "/api/fishes") { (data) in
            guard let jsonData = data else { return }
            let result = try? self.jsonDecoder.decode([Fish].self, from: jsonData)
            completion(result ?? [Fish]())
            
        }
    }
}
