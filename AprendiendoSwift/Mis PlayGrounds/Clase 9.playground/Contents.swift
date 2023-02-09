import UIKit

//*************************************************************************

            // Closures
                    // Los closures Bloque autocontenido de codigo que se puede pasar/usar alrededor de la aplicacion

let miPrimeroClosure = {(materiaUno:Double,materiaDos:Double,materiaTres:Double) -> Double in
    return (materiaUno + materiaDos + materiaTres)/3
}

print("Mi calificacion promedio fue de: \(miPrimeroClosure(100,22,88))")

        // Los closures son como las funciones

//*************************************************************************

    // Struct

        // Ejemplo 1 Estructura con propiedades por default

struct cuadrados{
        // Propiedades
    var ancho = 10
    var alto = 10
    
        // Metodos
    func area() -> Int {
        return ancho * alto
    }
    
}
    // Instanciar mi estructura
var miCuadrado = cuadrados()

    // Ejemplo de area usando la propiedades
        // Con el punto se puede acceder a las propiesdades y metodos de la struct
var areaCuadrado = miCuadrado.ancho * miCuadrado.alto

    // Ejemplo de area con un metodo
miCuadrado.area()


// Ejemplo 2 Estructura con inicializador (Constructor)

struct ShoppingCart {

    var totalPrice: Double
    var numberOfItems: Int

        // Constructor
    init(totalPrice: Double = 0, numberOfItems: Int = 0) {
        self.totalPrice = totalPrice
        self.numberOfItems = numberOfItems
    }

}

let shoppingCart = ShoppingCart()


    // Ejemplo 3 Estructura sin constructor

    // Se define una estructura de tipo User
struct User {

    // MARK: - Properties
        // Se declara una propiedad constante de tipo String sin inicializar
    let name: String

    // MARK: - Instance Methods

    func greeting() -> String {
        "Hello \(name)"
    }

}

    // El compilador genera un inicializador (memberwise initializer) porque no se definio un inicializador personalizado.
let miguel = User(name: "miguel")
let jane = User(name: "Jane")

jane.greeting()
miguel.greeting()




//*************************************************************************

// Clase

    // La clases no tienen un constructor automático para inicializar las clases; se debe crear uno personalizado.

    // Se define la clase Tipo automovil
class automovil {
        // propiedades
    var color = "negro"
    var numLlantas = 4
    var precio = 0
    
        // metodos
    func encender() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return true
    }
    
    func acelerar() -> Bool {
        return true
    }
}
    // Instanciar la clase o crear el objeto
var miObjetoMazda = automovil()

miObjetoMazda.precio
miObjetoMazda.precio = 150000

print(miObjetoMazda.precio)






//*************************************************************************

    // Optionals
        /* Los optionals manejan las ausencias de valor representando las ausencias de valor
        
        */
            // Variable optional

let myStringNumber = "100"
let myIntNumber = Int(myStringNumber)

let myWrongStringNumber = "Miguel"
let myWorngIntNumber: Int? = Int(myWrongStringNumber)

var myOptionalString: String?
print(myOptionalString)
/* Al momento de escribir un dato con un interrogante se va a iniciallizar como nulo
   ya que no tiene un valor, ademas puedes no tenerlo
*/

// myOptionalString = "Hola mundo"

if myOptionalString != nil {
    print ("Varable con valor distinto a nulo")
} else{
    print("Variable nula")
}



