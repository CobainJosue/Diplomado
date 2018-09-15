//
//  FishService.swift
//  plasticfishes
//
//  Created by Josue Quiñones on 9/14/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import Foundation

struct FishService {
    static func list_all() -> [Fish] {
        let decoder = JSONDecoder()
        let result = try? decoder.decode([Fish].self, from: DataSource().fishes)
        return result ?? []
    }
}
