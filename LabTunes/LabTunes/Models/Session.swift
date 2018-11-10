//
//  Session.swift
//  LabTunes
//
//  Created by Josue Quiñones on 11/9/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import Foundation

class Session: NSObject {
    static let sharedInstance = Session() //Pertenece a la clase
    var token: String?
    
    override private init() { //No se puede llamar el init, solamente dentro de la clase
        super.init()
    }
    
    func saveSession() {
        token = "1234567890"
    }
}
