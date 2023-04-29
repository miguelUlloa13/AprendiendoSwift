import UIKit

//*************************************************************************

// Type casting || validacion de tipos de datos
        // Type casting es una forma de verificar el tipo de una instancia, o de tratar esa instancia como una superclase o subclase diferente de algún otro lugar en su propia jerarquía de clases.

let myString = "Miguel"
let myInt = 23

class Myclass {
    var name: String!
    var age: Int!
}

let myClass = Myclass()
myClass.name = "Miguel Ulloa"
myClass.age = 32

let myArray: [Any] = [myString, myInt, myClass]

for item in myArray {
    if item is String {
        // Downcasting: transformar un tipo de elemento/dato a otro
        let myItemString = item as! String
            // Se pone el desempaquetado en as porque ya se esta seguro que es String
        print("Item es de tipo String y tiene el valor \(myItemString)")
    } else if item is Int {
        // Downcastig
        let myItemInt = item as! Int
        print("Item es de tipo Int y tiene el valor \(myItemInt)")
    } else if item is Myclass {
        let myItemMyClass = item as! Myclass
        print("Item es de tipo MyClass y tiene el valor \(myItemMyClass.name!) y \(myItemMyClass.age!)")
    }
}

        // Forma mas sencilla es mediante Downcasting

for item in myArray {
    if let myItemString = item as? String {
        print("Item es de tipo String y tiene el valor \(myItemString)")
    } else if let myItemInt = item as? Int {
        print("Item es de tipo Int y tiene el valor \(myItemInt)")
    } else if let myItemMyClass = item as? Myclass {
        print("Item es de tipo MyClass y tiene el valor \(myItemMyClass.name!) y \(myItemMyClass.age!)")
    }
}






class Animal {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


class Perro: Animal {
    func pasear() {
        print("Sacando a pasear a: \(self.name)")
    }
}

class Gato: Animal {
    func limpiarCaja() {
        print("Limpiando la caja de arena de: \(self.name)")
    }
}

let primerPerro: Perro = Perro(name: "Bruno", age: 5)
let segundoPerro: Perro = Perro(name: "Nico", age: 4)
let primerGato: Gato = Gato(name: "Pachon", age: 7)

let mascotas: [Animal] = [primerPerro, primerGato, segundoPerro]

for mascota in mascotas {
    if let perro = mascota as? Perro {  // Si mascota es de tipo (as?) Perro entonces
        // Realiza este bloque 
        perro.pasear()
        
    } else if let gato = mascota as? Gato {
        gato.limpiarCaja()
    }
}
