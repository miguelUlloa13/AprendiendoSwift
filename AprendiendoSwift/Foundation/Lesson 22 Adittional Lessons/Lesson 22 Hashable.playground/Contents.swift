import UIKit

// MARK: - Hashable -
// En Swift, un Hashable es un protocolo que proporciona un hashValue a nuestro objeto. El hashValue se usa para comparar dos instancias. Para usarlo, el tipo debe conformar el protocolo.

struct Student: Hashable {
    let name: String
    let favoriteSubject: String
}

// Se inicializa 2 instancias (objetos) con diferentes valores
let instanceOne = Student(name: "Miguel", favoriteSubject: "OOP")
let instanceTwo = Student(name: "Martha", favoriteSubject: "Math")

// Diferentes hash values
print(instanceOne.hashValue) // Output: 8501818872975315113
print(instanceTwo.hashValue) // Output: -4239031812931767606

// Nota: un hash value es un número entero largo que varía según el sistema que esté utilizando, por lo que puede obtener diferentes valores para el mismo código.


// Se inicializa 2 instancias (objetos) con valore iguales
let instanceThree = Student(name: "Pablo", favoriteSubject: "Spanish")
let instanceFour = Student(name: "Pablo", favoriteSubject: "Spanish")

// Hash values Iguales
print(instanceThree.hashValue) // Output: 2626064632414164357
print(instanceFour.hashValue) // Output: 2626064632414164357

// Si se instancia un tipo con los mismos valores se obtendra un un hash value igual para ambos, en cambio si se inicializa diferente, el hash value sera diferente
