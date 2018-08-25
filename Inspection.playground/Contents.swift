//: Playground - noun: a place where people can play

import UIKit

class Animal {
    
}

class Dog: Animal {
    
}

class Cat: Animal {
    
}

var pet: Animal = Animal()


//Type inspection

if pet is Dog {
    print("The client's pet is a dog")
} else if pet is Cat {
    print("Is a cat")
}


//Type casting

// Se realiza un casteo
if let dog = pet as? Dog {
    print(dog)
}

/*
 is solo pregunta, realiza una comparacion.
 as? hace un casteo o lo intenta y puede devolver nil.
 */

//Any

var items: [Any] = [5, "Bill", 6.7, Dog()]

for item in items {
    if item is Int {
        print("Entero \(item)")
    }
}

if let thirdItem = items[2] as? Int {
    print(thirdItem + 4)
}

/*
 guard verifica y si no se cumple entra al else
 
 guard condition else {
    //false: execute some code
 }
 //true: continue executing
 
 ex.
 guard birthdayIsToday else {
    print("No one has birthday today.")
    return
 }
 */













