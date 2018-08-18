//: Playground - noun: a place where people can play

import UIKit

var valor = 4

//inout nos permite el paso por referencia
//es como si crearamos un apuntador (param) que apunta a lo que recibe (valor)
func cambiaValor(param: inout Int) -> Int {
    param += 1
    
    return param
}

print(cambiaValor(param: &valor))
print(valor)


struct Alumno {
    var nombre: String
    var edad: Int
    static var salud = "Sano"
    var carrera: String = "Ing. Computacion" {
        //Observadores:
        //Se activa cuando voy a cambiar el valor de una propiedad
        willSet {
            print("Este será el nuevo valor \(newValue)")
        }
        didSet {
            print("Este fue el valor asignado \(oldValue)")
        }
    }
    
    //Hace que sea mutable desde dentro de la struct todo lo de la funcion, ya que todo es inmutable en una struct desde DENTRO de la struct, desde fuera es mutable
    mutating func cambiaValor() {
        nombre = "nobody"
    }
    
    init(nombre: String) {
        self.nombre = nombre
        self.edad = 0
    }
    
    init(edad: Int) {
        self.edad = edad
        self.nombre = "desconocido"
        
    }
    
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
}

/*
 -Los structs tienen asignados incializadores sinteticos
 por defecto.
 
 -Los structs no tienen herencia
 
 -Los structs se manejan por valor
 */

var luis = Alumno(nombre: "Luis")
luis.carrera = "Lic. Contaduria"
luis.carrera = "Trabajo Social"

var pedro = luis
pedro.nombre = "pedro"

dump(pedro)
dump(luis)



/*
 -Las clases son tipos de datos por referencia
 
 
 */

class Profesor {
    //otra forma de inicializar:
    var nombre: String = "none"
    
}

var german = Profesor()
var beto = german
beto.nombre = "Beto"

dump(german)
dump(beto)




Alumno.salud











