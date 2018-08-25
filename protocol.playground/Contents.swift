//: Playground - noun: a place where people can play

import UIKit

class Alumno: CustomStringConvertible {
    var nombre: String = "nobody"
    var description: String {
        return "Yo soy \(nombre)"
    }
}


var luis = Alumno()
print(luis)

//En este caso el protocolo es opcional, pero es por buenas practicas
struct Empleado: Equatable, Comparable, CustomStringConvertible, Codable {
    var nombre: String
    var apellidos: String
    var edad: Int
    
    static func ==(lhs: Empleado, rhs: Empleado) -> Bool {
        return lhs.nombre == rhs.nombre && lhs.apellidos == rhs.apellidos
    }
    static func < (lhs: Empleado, rhs: Empleado) -> Bool {
        return lhs.edad < rhs.edad
    }
    var description: String {
        return "\(nombre) - \(edad)"
    }
}

/*
 if godin1 == godin2 {
 print("Son iguales")
 }else {
 print("no son iguales")
 }
 
 if godin1 < godin2 {
 print("Menor")
 }
 */

var godin1 = Empleado(nombre: "Pedro", apellidos: "Mola", edad: 19)
var godin2 = Empleado(nombre: "Juan", apellidos: "Reyes", edad: 25)
var godin3 = Empleado(nombre: "Juan", apellidos: "Reyes", edad: 18)
var godin4 = Empleado(nombre: "Juan", apellidos: "Reyes", edad: 19)
var godin5 = Empleado(nombre: "Juan", apellidos: "Reyes", edad: 25)

var empleados = [godin1, godin2, godin3, godin4, godin5]
let empleadosOrdenados = empleados.sorted(by: <)
for empleado in empleadosOrdenados {
    print(empleado)
}

let jsonEncoder = JSONEncoder()
if let jsonData = try? jsonEncoder.encode(godin1), let jsonString = String(data: jsonData, encoding: .utf8) {
    print(jsonString)
}

protocol NombreCompleto {
    var nombreCompleto: String { get }
    
    func diNombreCompleto()
}

struct Persona: NombreCompleto {
    var nombre: String
    var apellidos: String
    var nombreCompleto: String {
        return "\(nombre) \(apellidos)"
    }
    
    func diNombreCompleto() {
        print(nombreCompleto)
    }
}

var manuel = Persona(nombre: "Manuel", apellidos: "Manita Santa")
manuel.diNombreCompleto()













