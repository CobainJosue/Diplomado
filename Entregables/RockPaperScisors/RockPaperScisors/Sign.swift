//
//  Sign.swift
//  RockPaperScisors
//
//  Created by Josue on 11/08/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import Foundation
import GameplayKit

enum Sign {
    case rock,paper,scissor
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "🖐"
        case .scissor:
            return "✌️"
        }
    }
    func compare(_ opponent: Sign) -> GameState {
        
       /* if opponent.rock {
            
        }*/
        
    }
}
