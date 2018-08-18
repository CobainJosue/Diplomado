//: [Previous](@previous)

import Foundation

//Diccionario

var scores = ["Pumas": 10, "CA": 10, "AME": 8]

var otrosScores = [String: Int]()
var otraFormDic = Dictionary<String, Int>()
var ultimaForma: [String : Int] = [:]

scores["Pumas"] = 14

//Lo devuelve antes de actualizar:
let oldValue = scores.updateValue(11, forKey: "CA")

scores["CA"] = nil

let equipos = Array(scores.keys)
let puntos = Array(scores.values)

//Variable condicionada.
if let myScore = scores["Pumas"] {
    print(myScore)
}


















//: [Next](@next)
