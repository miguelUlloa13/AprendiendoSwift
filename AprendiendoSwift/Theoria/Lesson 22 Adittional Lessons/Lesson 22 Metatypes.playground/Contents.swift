import UIKit

// MARK: - Metatypes

// Para comprender los metatipos o metatypes, es útil comenzar con lo familiar. Por ejemplo, así como String es el tipo de "Hello, World!", String.Type es el tipo de String.self. Mientras que String es el tipo de una instancia, String.Type es el tipo de un tipo, de ahí el nombre "metatipo".

let myString: String = "Hello, world!"
let instanceString: String = String("Hello, World!")

// Ambas constantes: myString y instanceString, realmente hacen lo mismo pero de diferente forma. Cada una contienen la frase Hello, World!, el cual es una cadena de caracteres, es decir, que ambas constantes son de tipo String.
// La diferencia radica que en myString se instancia al tipo String de forma mas simple.


// String es el tipo de "Hello, World!"
let myString2: String = "Hello World!"

// String.Type es el tipo de String.self
let myStringType: String.Type = String.self


// MARK: - Ejemplo -

// Un Metatypes en Swift se refiere al tipo que describe el tipo en sí. El metatipo de una clase, estructura, enumeración o protocolo se escribe con un punto (.) seguido de la palabra clave self. Por ejemplo, el metatipo de la clase Vehicle sería Vehicle.self

class Car {
    var color: String
    
    required init(color: String) {
        self.color = color
    }
    func start() {
        print("Starting car")
    }
}

let metaType = Car.self // El Metatypes de una clase es un tipo que describe la clase misma.

// Se puede usar el Metatypes para crear dinámicamente instancias de la clase, acceder a propiedades y métodos de nivel de tipo y realizar otras operaciones relacionadas con el tipo.

let carInstance = metaType.init(color: "Black")
carInstance.start() // Output: Starting car



// MARK: - Ejemplo 2 Metatype usando protocolo -

protocol Vehicle {
    init()
    func start()
}

class Bike: Vehicle {
    required init() {}
    func start() {
        print("Starting byke")
    }
}

class Plane: Vehicle {
    required init() {}
    func start() {
        print("Starting plane")
    }
}

var VehicleType: Vehicle.Type = Bike.self  // Metatype mediante un protocolo Vehicle. Type permite acceder solo a las funciones definidas en el protocolo del vehículo.

// Se crea la instancia de clase usando el metatype
let bikeInstance = VehicleType.init()

// Se llama el metodo start() de la instancia
bikeInstance.start()   // Output: Starting car


VehicleType = Plane.self
let planeInstance = VehicleType.init()
planeInstance.start()




// Los Metatypes son una forma de acceder al tipo de una class, struct o enum en Swift. El Metatype es un tipo que representa el tipo de la class, struct o enum. Se puede usar para crear instancias del tipo, acceder a sus propiedades y llamar a sus métodos.
