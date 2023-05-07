import UIKit

// MARK: - Types contraints -

// Si queremos limitar los genéricos para algunos tipos específicos, por ejemplo: una clase, protocolo o solo aceptar datos de tipos de números (Numeric), entonces podemos usar Types contraints.


    // MARK: - Ejemplo

class SomeClass {
    
}

protocol SomeProtocol {
    
}

//Crear la función generica con type constraint
func genericFunction<T: SomeClass, U: SomeProtocol>(a: inout T, b: inout T, c: inout U) {

}
    // T: el parametro debe ser tipo SomeClass
    // U: el parametro debe conformar el protocolo SomeProtocol
 

    // MARK: - Ejemplo 2

func addition<T: Numeric>(num1: T, num2: T) {

  print("Sum:", num1 + num2)
}

// Pasar valores tipo Int
addition(num1: 5, num2: 10)

// Pasar valores tipo float
addition(num1: 5.5, num2: 10.8)

    // Numeric es el protocolo incorporado para valores numéricos como Int, Float y Double.



    // MARK: - Ejemplo 3

struct PostsModel: Decodable{
    let id: Int
    let title: String
}

struct CommentsModel: Decodable {
    let id: Int
    let title: String
}

class Networking {
    func getData<T: Decodable>(model: T.Type) {
        
    }
}

// El metodo getUsers() permite argumentos que conforme el protocolo Decodable.
var networking = Networking()

// Pasar el modelo PostsModel
networking.getData(model: PostsModel.self)

// Pasar el modelo CommentsModel
networking.getData(model: CommentsModel.self)
