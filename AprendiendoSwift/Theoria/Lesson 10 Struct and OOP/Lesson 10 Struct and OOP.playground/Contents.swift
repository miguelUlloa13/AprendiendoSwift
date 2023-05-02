import UIKit



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
print(type(of: miCuadrado.area()))
print(miCuadrado.ancho)


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

        // Ejemplo 1 con propiedades con valores por default

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



        // Ejemplo 2 con propiedades con valores por default

class cuadarado {
    
        // propiedades
    let numLados: Int
    let medidaLado: Int
    
    init(medidaLado: Int) {
        self.numLados = 4
        self.medidaLado = medidaLado
    }
    
        // metodos
    
    func area() -> Int {
        
        var result:Int?
        result = medidaLado * medidaLado
        
        return result!
        
    }
    
    func perimetro() -> Int {
        
        var result:Int?
        result = medidaLado * numLados
        
        return result!
        
    }

}

let miCuadrado2 = cuadarado(medidaLado: 10)
miCuadrado2.area()
miCuadrado2.perimetro()

//*************************************************************************

    // Sobrecarga de funciones
        // Se le llama sobrecarga de funciones o métodos a la creación de varias funciones dentro de nuestro programa, que tienen el mismo nombre, pero sus argumentos son distintos y realizan distinta acción.

class Coche{
   //Atributos
    var marca: String
    var anio: Int

   //Métodos
        //Método Constructor
    
    // Método Constructor Sobrecargado
     init (marca: String, anio: Int){
        self.marca = marca
        self.anio = anio
     }
    
    init(marca: String) {
        self.anio = 0
        self.marca = marca
    }
    



   // Método modelo
    public func modelo(){
       print("La marca es  \(marca) y no tiene modelo")
    }

   // Método modelo sobrecargado
    public func modelo(modelo: String){
       print("La marca es  \(marca), y el modelo es de  \(marca)")
    }
}

let miCoche1 = Coche(marca: "Volkswawen")
let miCoche2 = Coche(marca: "Chevrolet", anio: 2009)



//*************************************************************************

    // Atributos y métodos estáticos (static)

        /*Swift llama a estos atributos compartidos "atributos estáticos", y se pueden crear usando solamente el modificador static */

struct NetworkingProvider {
    static let link = "http://www.redsocial.com"
    
    var email:String
    var password:String
    
    init(email:String, password:String) {
        self.email = email
        self.password = password
    }

    func getUser() {
        print("logeandose")
    }
    
}

let miguelUser: NetworkingProvider = NetworkingProvider(email: "miguel@email.com", password: "1234")
print(NetworkingProvider.link)


