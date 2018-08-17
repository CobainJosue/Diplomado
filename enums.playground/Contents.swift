//: Playground - noun: a place where people can play

import UIKit
/*
enum LunchChoice {
    case pasta
    case burger
    case soup
    case fish
}*/

enum LunchChoice {
    case pasta, burger, soup, fish
    var order: String {
        switch self {
        case .burger:
            return "Hamburguesa"
        case .soup,.fish:
            return "Hay oferta"
        default:
            return "Todo lo demas"
        }
    }
}

var foodEnum: LunchChoice
foodEnum = LunchChoice.burger
foodEnum = .soup
    
    foodEnum = .fish
    foodEnum.order

//Baraja

enum Suit {
    case spades, hearts, diamonds, club
    var rank: Int {
        switch self {
        case .spades:
            return 4
        case .hearts:
            return 3
        case .diamonds:
            return 2
        case .club:
            return 1
        }
    }
    func beats(_ otherSuit: Suit) -> Bool {
        return self.rank > otherSuit.rank
    }
}

var mySuit: Suit = .club
mySuit.rank
var yourSuit: Suit = .diamonds
mySuit.beats(yourSuit)









