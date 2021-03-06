//
//  Secrets.swift
//  Worldb
//
//  Created by Josue on 29/09/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import Foundation
import SAMKeychain

enum Secrets {
    static let apiService = "com.kerokuapp.worldb"
    case authToken
    case userToken(key: String)
    
    var value: String? {
        switch self {
        case .authToken:
            return SAMKeychain.password(forService: Secrets.apiService, account: "api")
        case .userToken(let key):
            return SAMKeychain.password(forService: Secrets.apiService, account: key)
        }
    }
    
    func set(_ value: String) -> Bool {
        switch self {
        case .authToken:
            return SAMKeychain.setPassword(value, forService: Secrets.apiService, account: "api")
        case .userToken(let key):
            return SAMKeychain.setPassword(value, forService: Secrets.apiService, account: key)
        }
    }
    
    func delete() -> Bool {
        switch self {
        case .authToken:
            return SAMKeychain.deletePassword(forService: Secrets.apiService, account: "api")
        case .userToken(let key):
            return SAMKeychain.deletePassword(forService: Secrets.apiService, account: key)
        }
    }
    
}
