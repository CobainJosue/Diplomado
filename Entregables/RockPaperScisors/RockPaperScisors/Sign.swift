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
        
        switch opponent {
        case .rock:
            if self == .rock {
                return .draw
            }
            else if self == .paper {
                return .win
            } else {
                return .lose
            }
        case .paper:
            if self == .rock {
                return .lose
            }
            else if self == .paper {
                return .draw
            } else {
                return .win
            }
        case .scissor:
            if self == .rock {
                return .win
            }
            else if self == .paper {
                return .lose
            } else {
                return .draw
            }
        }
        
    }
}

func getSign(_ map: Int) -> Sign {
    
    
    if map == 0 {
        return .rock
    } else if map == 1 {
        return .paper
    } else {
        return .scissor
    }
    
}











