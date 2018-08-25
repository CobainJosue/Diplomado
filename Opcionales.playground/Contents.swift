//: Playground - noun: a place where people can play

import UIKit

struct Book {
    let name: String
    //Puede ser nulo
    let publicationYear: Int?
    /*
     En Swift tenemos que los valores nulos (nil) no son aplicables a todos los tipos de datos.
     */
}
//                          etiqueta de argumento
let firstHarryPotter = Book(name: "Harry Potter", publicationYear: 2002)


let unannouncedBook = Book(name: "Rebels and Lions", publicationYear: nil)

var str: String? = "La cadena"
//print(str)

if let unwrappedStr = str {
    print(unwrappedStr)
}

//Return values

let string = "e123"
let possibleNumber = Int(string)
if let unwrappedNumber = possibleNumber {
    print(unwrappedNumber)
} else {
    print("Por favor ingrese un numero válido")
}

struct Toddler {
    var name: String
    var monthsOld: Int
    //Failable initializer -> Un inicializador que puede fallar (devolver nil) y por ende
    //toda la instancia de la estructura es opcional.
    init?(name: String, monthsOld: Int) {
        if(monthsOld < 12 ) {
            return nil
        }
        else {
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}
let myBoy = Toddler(name: "Lalito", monthsOld: 12)
if let unwrappedToddler = myBoy {
    print(unwrappedToddler.monthsOld)
}
else {
    print("No se pudo instanciar la estructura")
}

//Optional chaining

struct Person {
    var age: Int
    var residence: Residence?
}

struct Residence {
    var address: Address?
}

struct Address {
    var buildingNumber: String?
    var streetName: String?
    var apartmentNumber: String?
}



let io: Person = Person(age: 22, residence: Residence(address: Address(buildingNumber: "10", streetName: "La calle de las sirenas", apartmentNumber: nil)))

if let unwrappedPerson = io.residence {
    if let unwrappedAddress = unwrappedPerson.address {
        if let theApartment = unwrappedAddress.apartmentNumber {
            print("He/she lives in apartment number \(theApartment)")
        } else {print("No tiene numero de departamento")}
    }else {print("Direccion nula")}
}else {print("Residencia nula")}

//Optional chaining
if let theApartmentNumber = io.residence?.address?.apartmentNumber {
    print("He/she lives in apartment number \(theApartmentNumber)")
}

//Implicitly Unwrapped Optionals.

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    //El signo de admiracion se usa cuando garantizamos que tendra un valor
    //cuando lo vamos a utilizar
}
















