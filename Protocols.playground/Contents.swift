import UIKit

protocol MiProtocolo {
    
    func juega()
    
}

extension String {
    func saluda() {
        print("Hola soy una extension")
    }
}

class alumnoReprobador: MiProtocolo {
    func juega() {
        print("Estoy jugando")
    }
    
    
}

var alumno = "Hola"
alumno.saluda()
