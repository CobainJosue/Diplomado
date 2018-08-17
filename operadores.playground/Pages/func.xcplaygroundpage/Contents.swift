//: [Previous](@previous)

import Foundation

func hello(name: String, lastName: String, num: Int) -> String{
    print("Hello " + name)
    return name
}

//Se pueden poner dos alias a los parametros, el primero es una etiqueta exterior
//el segundo es una etiqueta interior para llamarla dentro de la funcion
func printHello(using friendName: String) {
    print("Hello " + friendName)
}

//omitir la etiqueta exterior:
func HelloTo(_ name: String) {
    print("Hello " + name)
}

HelloTo("Josue")

//notacion de tipo
//let partNumber : Int = 3.2
let partNumber : Double = 3.2
let wholeNumber = 2.0

let newNumber = partNumber + wholeNumber

//Algunos tipos de datos tienen inicializadores pero no estan en la lib estandar

let string = ""
let string2 = String()

let number = Bool()
let fecha = Date()
print(type(of: fecha))
//let time = Date(timeIntervalSince1970: 5)

//Propiedades y metodos de una instancia
var introduction = "jfildsgdsfvbf g noioigfl il lfd "
introduction.append("H")
//introduction.isEmpty
//introduction.removeAll()

introduction.hasPrefix("jfi")














//: [Next](@next)

